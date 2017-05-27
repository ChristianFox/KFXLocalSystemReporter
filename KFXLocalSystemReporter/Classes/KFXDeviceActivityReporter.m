/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * For full licence details see License.md
 *
 * This file is part of KFXLocalSystemReporter
 *
 ************************************/

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
