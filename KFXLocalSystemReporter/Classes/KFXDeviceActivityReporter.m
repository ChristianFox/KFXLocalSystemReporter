//
//  KFXDeviceActivityReporter.m
//  Pods
//
//  Created by Eyeye on 06/05/2016.
//
//

#import "KFXDeviceActivityReporter.h"

@implementation KFXDeviceActivityReporter



#pragma mark - Unit Tests?
+(BOOL)isPerformingUnitTests{
#ifdef USE_XCTEST
    return YES;
#else
    return NO;
#endif
}

+(BOOL)isRunningOnSimulator{
#if (TARGET_IPHONE_SIMULATOR)
    return YES;
#else
    return NO;
#endif
}


+(BOOL)isDebug{
#if DEBUG
    return YES;
#else
    return NO;
#endif
}


@end
