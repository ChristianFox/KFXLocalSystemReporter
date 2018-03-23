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
#import <KFXCore/KFXCore.h>

@interface KFXHardwareReporter : NSObject

+(NSString*)hardwareDescription;
+(NSString*)hardwareString;
+(NSString*)deviceType;
+(KFXDeviceFamily)deviceFamily;
+(KFXDeviceScreenSize)deviceScreenSizeType;

// Device capabilities
+(BOOL)canDevicePlaceAPhoneCall;


@end
