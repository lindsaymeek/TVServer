
#ifndef CONFUSE_H
#define CONFUSE_H

/*

WZ1239 TVSERVER USB ADAPTOR

WEDGE for DJMOUNT DLNA/UPNP interface to TVSERVER

The TVSERVER pretends its the FUSE library to DJMOUNT and then hijacks the API 
to access the DLNA media servers in a very simple way <insert soap joke here>

*/

#include <fuse.h>

/// Main entry point for TVSERVER (called from DJMOUNT)
int confuse_main(int argc,char **argv, struct fuse_operations *fo);

#endif

