/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXLocalSystemReporter
 *
 ************************************/

#import "KFXDeviceActivityReporter.h"

@implementation KFXDeviceActivityReporter



#pragma mark - Unit Tests?
+(BOOL)isPerformingUnitTests{
    return (NSClassFromString(@"XCTestProbe") != nil);

//#ifdef USE_XCTEST
//    return YES;
//#else
//    return NO;
//#endif
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
