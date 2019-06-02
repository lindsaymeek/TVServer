# TVServer
LCDTV SERVER - Streaming Media using Ethernet WIZ550io / USB Adaptor

by Lindsay Meek

Parts used – WIZ550io (W5500), PIC24FJ64GB002

ABSTRACT

The LCDTV SERVER is a small device that plugs into the USB port of a LCD TV or portable DVD player, 
and allows it to stream media over the network from a file server.

It does this by presenting itself to the LCD TV as a conventional USB flash memory, 
emulating the interface of a mass-storage USB device.

The LCD TV communicates with the device as if it were an ordinary FAT file system. 
The sector reads to the file system are intercepted and converted into Ethernet equivalents using the lightweight ATAOE protocol. 
The requests are then broadcast across a local area network to a central media server using the Ethernet interface of the W5100io module. 

The file server processes the ATAOE sector read requests originating from the device and uses it to access an emulated 200GB 
FAT32 disk drive. This disk drive is not real, and acts a translation layer to the local DLNA Media Network. 
This network can then be used to directly access the Windows Media Server or a host of other DLNA media servers.

