#ifndef _IO_STREAM_H_
#define _IO_STREAM_H_

#include <stddef.h>

typedef struct
{
    void * pvStreamContext;
    char * const pcStreamOut;
    size_t xCapacityOut;
    char * const pcStreamIn;
    size_t xCapacityIn;
} IOStream_t;

#endif