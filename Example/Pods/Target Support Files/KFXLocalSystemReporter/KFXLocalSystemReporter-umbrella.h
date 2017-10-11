#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "KFXDeviceActivityReporter.h"
#import "KFXHardwareReporter.h"
#import "KFXLocalSystemReporter.h"
#import "KFXSoftwareReporter.h"
#import "KFXSystemReporter.h"

FOUNDATION_EXPORT double KFXLocalSystemReporterVersionNumber;
FOUNDATION_EXPORT const unsigned char KFXLocalSystemReporterVersionString[];

