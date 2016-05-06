//
//  KFXHardwareReporter.h
//  Pods
//
//  Created by Eyeye on 06/05/2016.
//
//

#import <Foundation/Foundation.h>

@interface KFXHardwareReporter : NSObject

+(NSString*)hardwareDescription;
+(NSString*)hardwareString;
+(NSString*)deviceType;

// Device capabilities
+(BOOL)canDevicePlaceAPhoneCall;


@end
