//
//  KFXDeviceActivityReporter.h
//  Pods
//
//  Created by Eyeye on 06/05/2016.
//
//

#import <Foundation/Foundation.h>

@interface KFXDeviceActivityReporter : NSObject

+(BOOL)isRunningOnSimulator;

+(BOOL)isPerformingUnitTests;

+(BOOL)isDebug;

@end
