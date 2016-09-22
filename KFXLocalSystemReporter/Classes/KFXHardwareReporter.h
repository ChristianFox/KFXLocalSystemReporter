//
//  KFXHardwareReporter.h
//  Pods
//
//  Created by Eyeye on 06/05/2016.
//
//

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
