//
//  KFXHardwareReporter.m
//  Pods
//
//  Created by Eyeye on 06/05/2016.
//
//

#import "KFXHardwareReporter.h"
#include <sys/types.h>
#include <sys/sysctl.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>

@implementation KFXHardwareReporter

#pragma mark - Hardware
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
    if ([hardware isEqualToString:@"iPhone8_1"]) return @"iPhone 6S";
    if ([hardware isEqualToString:@"iPhone8_2"]) return @"iPhone 6S Plus";
    
    
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
    
    if ([hardware isEqualToString:@"iPad6,7"]) return @"iPad Pro (Wi-Fi)";
    if ([hardware isEqualToString:@"iPad6,8"]) return @"iPad Pro (Wi-Fi + Cellular)";
    
    if ([hardware isEqualToString:@"i386"]) return @"Simulator";
    if ([hardware isEqualToString:@"x86_64"]) return @"Simulator";
    
    return nil;
}

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
