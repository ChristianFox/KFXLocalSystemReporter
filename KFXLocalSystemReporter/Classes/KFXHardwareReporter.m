/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXLocalSystemReporter
 *
 ************************************/

#import "KFXHardwareReporter.h"
#include <sys/types.h>
#include <sys/sysctl.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>

@implementation KFXHardwareReporter

#pragma mark - Hardware
//Courtesy of https://github.com/InderKumarRathore/DeviceUtil/blob/master/DeviceUtil.m
+(NSString*)hardwareDescription
{
    NSString *hardware = [self hardwareString];
    if ([hardware isEqualToString:@"iPhone1,1"]) return @"iPhone 2G";
    if ([hardware isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
    if ([hardware isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS";
    if ([hardware isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
    if ([hardware isEqualToString:@"iPhone3,2"]) return @"iPhone 4";
    if ([hardware isEqualToString:@"iPhone3,3"]) return @"iPhone 4 (CDMA)";
    if ([hardware isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
    if ([hardware isEqualToString:@"iPhone5,1"]) return @"iPhone 5";
    if ([hardware isEqualToString:@"iPhone5,2"]) return @"iPhone 5 (GSM+CDMA)";
    if ([hardware isEqualToString:@"iPhone5,3"]) return @"iPhone 5C (GSM)";
    if ([hardware isEqualToString:@"iPhone5,4"]) return @"iPhone 5C (Global)";
    if ([hardware isEqualToString:@"iPhone6,1"]) return @"iPhone 5S (GSM)";
    if ([hardware isEqualToString:@"iPhone6,2"]) return @"iPhone 5S (Global)";
    if ([hardware isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    if ([hardware isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    if ([hardware isEqualToString:@"iPhone8,1"]) return @"iPhone 6S";
    if ([hardware isEqualToString:@"iPhone8,2"]) return @"iPhone 6S Plus";
    if ([hardware isEqualToString:@"iPhone8,3"]) return @"iPhone SE";
    if ([hardware isEqualToString:@"iPhone9,3"]) return @"iPhone 7S";
    if ([hardware isEqualToString:@"iPhone9,2"]) return @"iPhone 7S Plus";

    if ([hardware isEqualToString:@"iPhone10,1"]) return @"iPhone 8 CN";
    if ([hardware isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus CN";
    if ([hardware isEqualToString:@"iPhone10,3"]) return @"iPhone X CN";
    if ([hardware isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    if ([hardware isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    if ([hardware isEqualToString:@"iPhone10,6"]) return @"iPhone X";

    if ([hardware isEqualToString:@"iPod1,1"]) return @"iPod Touch (1 Gen)";
    if ([hardware isEqualToString:@"iPod2,1"]) return @"iPod Touch (2 Gen)";
    if ([hardware isEqualToString:@"iPod3,1"]) return @"iPod Touch (3 Gen)";
    if ([hardware isEqualToString:@"iPod4,1"]) return @"iPod Touch (4 Gen)";
    if ([hardware isEqualToString:@"iPod5,1"]) return @"iPod Touch (5 Gen)";
    if ([hardware isEqualToString:@"iPod7,1"]) return @"iPod Touch (6 Gen)";
    
    if ([hardware isEqualToString:@"iPad1,1"]) return @"iPad";
    if ([hardware isEqualToString:@"iPad1,2"]) return @"iPad 3G";
    if ([hardware isEqualToString:@"iPad2,1"]) return @"iPad 2 (WiFi)";
    if ([hardware isEqualToString:@"iPad2,2"]) return @"iPad 2";
    if ([hardware isEqualToString:@"iPad2,3"]) return @"iPad 2 (CDMA)";
    if ([hardware isEqualToString:@"iPad2,4"]) return @"iPad 2";
    if ([hardware isEqualToString:@"iPad2,5"]) return @"iPad Mini (WiFi)";
    if ([hardware isEqualToString:@"iPad2,6"]) return @"iPad Mini 1";
    if ([hardware isEqualToString:@"iPad2,7"]) return @"iPad Mini 1 (GSM+CDMA)";
    if ([hardware isEqualToString:@"iPad3,1"]) return @"iPad 3 (WiFi)";
    if ([hardware isEqualToString:@"iPad3,2"]) return @"iPad 3 (GSM+CDMA)";
    if ([hardware isEqualToString:@"iPad3,3"]) return @"iPad 3";
    if ([hardware isEqualToString:@"iPad3,4"]) return @"iPad 4 (WiFi)";
    if ([hardware isEqualToString:@"iPad3,5"]) return @"iPad 4";
    if ([hardware isEqualToString:@"iPad3,6"]) return @"iPad 4 (GSM+CDMA)";
    if ([hardware isEqualToString:@"iPad4,1"]) return @"iPad Air (Wi-Fi)";
    if ([hardware isEqualToString:@"iPad4,2"]) return @"iPad Air (Wi-Fi+GSM)";
    if ([hardware isEqualToString:@"iPad4,3"]) return @"iPad Air (Wi-Fi+CDMA)";
    if ([hardware isEqualToString:@"iPad4,4"]) return @"iPad mini 2 - Retina (Wi-Fi)";
    if ([hardware isEqualToString:@"iPad4,5"]) return @"iPad mini 2 - Retina (Wi-Fi + CDMA)";
    if ([hardware isEqualToString:@"iPad4,6"]) return @"iPad mini 2 - Retina (Cellular - China)";
    if ([hardware isEqualToString:@"iPad4,7"]) return @"iPad mini 3 - Retina (Wi-Fi)";
    if ([hardware isEqualToString:@"iPad4,8"]) return @"iPad mini 3 (Cellular)";
    if ([hardware isEqualToString:@"iPad4,9"]) return @"iPad mini 3 (Cellular - China)";
    if ([hardware isEqualToString:@"iPad5,1"]) return @"iPad mini 4 (Wi-Fi)";
    if ([hardware isEqualToString:@"iPad5,2"]) return @"iPad mini 4 (Wi-Fi + Cellular)";
    
    if ([hardware isEqualToString:@"iPad5,3"]) return @"iPad Air 2 (Wi-Fi)";
    if ([hardware isEqualToString:@"iPad5,4"]) return @"iPad Air 2 (Cellular)";
    
    if ([hardware isEqualToString:@"iPad6,3"]) return @"iPad Pro (9.7\")(Wi-Fi)";
    if ([hardware isEqualToString:@"iPad6,4"]) return @"iPad Pro (9.7\")(Wi-Fi + Cellular)";

    if ([hardware isEqualToString:@"iPad6,7"]) return @"iPad Pro (12.9\")(Wi-Fi)";
    if ([hardware isEqualToString:@"iPad6,8"]) return @"iPad Pro (12.9\")(Wi-Fi + Cellular)";
    
    if ([hardware isEqualToString:@"iPad6,11"]) return @"9.7-inch iPad (Wi-Fi)";
    if ([hardware isEqualToString:@"iPad6,12"]) return @"9.7-inch iPad (Wi-Fi + Cellular)";

    if ([hardware isEqualToString:@"iPad7,1"]) return @"iPad Pro 12.9-Inch (Wi-Fi Only - 2nd Gen)";
    if ([hardware isEqualToString:@"iPad7,2"]) return @"iPad Pro 12.9-Inch (Wi-Fi/Cell - 2nd Gen)";
    if ([hardware isEqualToString:@"iPad7,3"]) return @"iPad Pro 10.5-Inch (Wi-Fi Only)";
    if ([hardware isEqualToString:@"iPad7,4"]) return @"iPad Pro 10.5-Inch (Wi-Fi/Cellular)";

//    if ([hardware isEqualToString:@"i386"]) return @"Simulator";
//    if ([hardware isEqualToString:@"x86_64"]) return @"Simulator";
    
    // https://github.com/erichoracek/UIDevice-Hardware/blob/master/UIDevice-Hardware.m
    // Simulator
    if ([hardware hasSuffix:@"86"] || [hardware isEqual:@"x86_64"])
    {
        BOOL smallerScreen = ([[UIScreen mainScreen] bounds].size.width < 768.0);
        return (smallerScreen ? @"iPhone Simulator" : @"iPad Simulator");
    }

    return nil;
}


//Courtesy of https://github.com/InderKumarRathore/UIDevice-Hardware/blob/master/UIDevice%2BHardware.m
//https://www.theiphonewiki.com/wiki/Models
+ (NSString*)hardwareString
{
    size_t size = 100;
    char *hw_machine = malloc(size);
    int name[] = {CTL_HW,HW_MACHINE};
    sysctl(name, 2, hw_machine, &size, NULL, 0);
    NSString *hardware = [NSString stringWithUTF8String:hw_machine];
    free(hw_machine);
    return hardware;
}

+(NSString *)deviceType{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        return @"iPad";
    }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone){
        return @"iPhone";
    }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomUnspecified){
        return @"unspecified";
    }else{
        return @"unknown";
    }
}

// https://github.com/erichoracek/UIDevice-Hardware/blob/master/UIDevice-Hardware.h
+ (UIDeviceFamily) deviceFamily
{
    NSString *modelIdentifier = [self hardwareString];
    if ([modelIdentifier hasPrefix:@"iPhone"]) return UIDeviceFamilyiPhone;
    if ([modelIdentifier hasPrefix:@"iPod"]) return UIDeviceFamilyiPod;
    if ([modelIdentifier hasPrefix:@"iPad"]) return UIDeviceFamilyiPad;
    if ([modelIdentifier hasPrefix:@"AppleTV"]) return UIDeviceFamilyAppleTV;
    return UIDeviceFamilyUnknown;
}



#pragma mark - Device Capabilities
/**
 * Returns YES if the device can place a phone call
 */
+(BOOL)canDevicePlaceAPhoneCall{
    // Check if the device can place a phone call
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tel://"]]) {
        // Device supports phone calls, lets confirm it can place one right now
        CTTelephonyNetworkInfo *netInfo = [[CTTelephonyNetworkInfo alloc] init];
        CTCarrier *carrier = [netInfo subscriberCellularProvider];
        NSString *mnc = [carrier mobileNetworkCode];
        if (([mnc length] == 0) || ([mnc isEqualToString:@"65535"])) {
            // Device cannot place a call at this time.  SIM might be removed.
            return NO;
        } else {
            // Device can place a phone call
            return YES;
        }
    } else {
        // Device does not support phone calls
        return  NO;
    }
    
}


@end
