
/*

 WZ1239 TVSERVER USB ADAPTOR
 MAIN LOOP

 */

#include <system.h>
#include <system_config.h>

#include <usb/usb.h>
#include <usb/usb_device_msd.h>

#include "app_device_msd.h"
#include "ethernet/wizchip_conf.h"

// k's allocated to sockets
uint8_t tx_buffer_sizes[_WIZCHIP_SOCK_NUM_] = { 2, 1, 0, 0, 0, 0, 0, 0 };  // TX buffers
uint8_t rx_buffer_sizes[_WIZCHIP_SOCK_NUM_] = { 16, 2, 0, 0, 0, 0, 0, 0 };  // RX buffers

volatile uint16_t ticker;

///
/// Read simple 1ms tick timer
///
uint16_t ReadTicker(void)
{
    uint16_t t;

    IEC0bits.T1IE = 0;

    t=ticker;

    IEC0bits.T1IE = 1;

    return t;
}

///
/// Elapsed time ticker interrupt @ 1ms
///
void __attribute__((interrupt,auto_psv)) _T1Interrupt()
{
    ticker++;
    
  IFS0bits.T1IF = 0;
}

///
/// Main line
///
MAIN_RETURN main(void)
{
    wiz_PhyConf phy;

    // Initialise the system
    SYSTEM_Initialize();

    LED=1;
    DD_LED=0;

    // Start timer1, clock=Fosc/2, set period to 1ms
    T1CON = 32768;
    PR1 = 16384;
    IEC0bits.T1IE = 1;

    // Initialise USB MSD driver
    USBDeviceInit();
    USBDeviceAttach();

    // Initialise W5500 chip & interface
    wizchip_init(&tx_buffer_sizes,&rx_buffer_sizes);

    phy.by = PHY_CONFBY_HW;
    phy.mode = PHY_MODE_AUTONEGO;
    wizphy_setphyconf(&phy);

    LED=0;

    // Run the MSD main loop
    while(1)
    {
        ClrWdt();

        SYSTEM_Tasks();

        /* If the USB device isn't configured yet, we can't really do anything
         * else since we don't have a host to talk to.  So jump back to the
         * top of the while loop. */
        if( USBGetDeviceState() < CONFIGURED_STATE )
        {
            /* Jump back to the top of the while loop. */
            continue;
        }

        /* If we are currently suspended, then we need to see if we need to
         * issue a remote wakeup.  In either case, we shouldn't process any
         * keyboard commands since we aren't currently communicating to the host
         * thus just continue back to the start of the while loop. */
        if( USBIsDeviceSuspended() == true )
        {
            /* Jump back to the top of the while loop. */
            continue;
        }

        //Application specific tasks
        APP_DeviceMSDTasks();

    }//end while
}//end main


/*******************************************************************
 * Function:        bool USER_USB_CALLBACK_EVENT_HANDLER(
 *                        USB_EVENT event, void *pdata, uint16_t size)
 *
 * PreCondition:    None
 *
 * Input:           USB_EVENT event - the type of event
 *                  void *pdata - pointer to the event data
 *                  uint16_t size - size of the event data
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function is called from the USB stack to
 *                  notify a user application that a USB event
 *                  occured.  This callback is in interrupt context
 *                  when the USB_INTERRUPT option is selected.
 *
 * Note:            None
 *******************************************************************/
bool USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, uint16_t size)
{
    switch((int)event)
    {
        case EVENT_TRANSFER:
            //Add application specific callback task or callback function here if desired.
            break;

        case EVENT_SOF:
            break;

        case EVENT_SUSPEND:
            break;

        case EVENT_RESUME:
            break;

        case EVENT_CONFIGURED:
            /* When the device is configured, we can (re)initialize the demo
             * code. */
            APP_DeviceMSDInitialize();
            break;

        case EVENT_SET_DESCRIPTOR:
            break;

        case EVENT_EP0_REQUEST:
            /* We have received a non-standard USB request.  The MSD driver
             * needs to check to see if the request was for it. */
            USBCheckMSDRequest();
            break;

        case EVENT_BUS_ERROR:
            break;

        case EVENT_TRANSFER_TERMINATED:
            //Add application specific callback task or callback function here if desired.
            //The EVENT_TRANSFER_TERMINATED event occurs when the host performs a CLEAR
            //FEATURE (endpoint halt) request on an application endpoint which was
            //previously armed (UOWN was = 1).  Here would be a good place to:
            //1.  Determine which endpoint the transaction that just got terminated was
            //      on, by checking the handle value in the *pdata.
            //2.  Re-arm the endpoint if desired (typically would be the case for OUT
            //      endpoints).

            //Check if the host recently did a clear endpoint halt on the MSD OUT endpoint.
            //In this case, we want to re-arm the MSD OUT endpoint, so we are prepared
            //to receive the next CBW that the host might want to send.
            //Note: If however the STALL was due to a CBW not valid condition,
            //then we are required to have a persistent STALL, where it cannot
            //be cleared (until MSD reset recovery takes place).  See MSD BOT
            //specs v1.0, section 6.6.1.
            if(MSDWasLastCBWValid() == false)
            {
                //Need to re-stall the endpoints, for persistent STALL behavior.
                USBStallEndpoint(MSD_DATA_IN_EP, IN_TO_HOST);
                USBStallEndpoint(MSD_DATA_OUT_EP, OUT_FROM_HOST);
            }
            else
            {
                //Check if the host cleared halt on the bulk out endpoint.  In this
                //case, we should re-arm the endpoint, so we can receive the next CBW.
                if((USB_HANDLE)pdata == USBGetNextHandle(MSD_DATA_OUT_EP, OUT_FROM_HOST))
                {
                    USBMSDOutHandle = USBRxOnePacket(MSD_DATA_OUT_EP, (uint8_t*)&msd_cbw, MSD_OUT_EP_SIZE);
                }
            }
            break;

        default:
            break;
    }
    return true;
}

/*******************************************************************************
 End of File
*/

