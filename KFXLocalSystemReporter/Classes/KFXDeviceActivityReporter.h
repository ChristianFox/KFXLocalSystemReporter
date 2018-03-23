/********************************
 *
 * Copyright © 2016-2018 Christian Fox
 *
 * MIT Licence - Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXLocalSystemReporter
 *
 ************************************/



#import <Foundation/Foundation.h>

@interface KFXDeviceActivityReporter : NSObject

+(BOOL)isRunningOnSimulator;

+(BOOL)isPerformingUnitTests;

+(BOOL)isDebug;

@end
