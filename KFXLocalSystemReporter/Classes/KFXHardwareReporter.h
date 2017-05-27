/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXLocalSystemReporter
 *
 ************************************/



// https://github.com/erichoracek/UIDevice-Hardware/blob/master/UIDevice-Hardware.h
typedef NS_ENUM(NSUInteger, UIDeviceFamily) {
    UIDeviceFamilyiPhone,
    UIDeviceFamilyiPod,
    UIDeviceFamilyiPad,
    UIDeviceFamilyAppleTV,
    UIDeviceFamilyUnknown,
};


#import <Foundation/Foundation.h>

@interface KFXHardwareReporter : NSObject

+(NSString*)hardwareDescription;
+(NSString*)hardwareString;
+(NSString*)deviceType;

// Device capabilities
+(BOOL)canDevicePlaceAPhoneCall;


@end
