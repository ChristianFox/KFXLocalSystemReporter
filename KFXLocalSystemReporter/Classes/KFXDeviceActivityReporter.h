/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * For full licence details see License.md
 *
 * This file is part of KFXLocalSystemReporter
 *
 ************************************/


#import <Foundation/Foundation.h>

@interface KFXDeviceActivityReporter : NSObject

+(BOOL)isRunningOnSimulator;

+(BOOL)isPerformingUnitTests;

+(BOOL)isDebug;

@end
