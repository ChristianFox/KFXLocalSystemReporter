/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXLocalSystemReporter
 *
 ************************************/


#import <Foundation/Foundation.h>
#import <KFXUtilities/KFXUtilities.h>

@interface KFXHardwareReporter : NSObject

+(NSString*)hardwareDescription;
+(NSString*)hardwareString;
+(NSString*)deviceType;
+(KFXDeviceFamily)deviceFamily;
+(KFXDeviceScreenSize)deviceScreenSizeType;

// Device capabilities
+(BOOL)canDevicePlaceAPhoneCall;


@end
