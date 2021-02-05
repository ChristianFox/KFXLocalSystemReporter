/********************************
 *
 * Copyright © 2016-2018 Christian Fox
 *
 * MIT Licence - Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXLocalSystemReporter
 *
 ************************************/

#import "KFXHardwareReporter.h"
#include <sys/types.h>
#include <sys/sysctl.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>
#import <KFXUtilities/KFXMaths.h>


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

    if ([hardware isEqualToString:@"iPhone11,2"])   return @"iPhone XS";
    if ([hardware isEqualToString:@"iPhone11,4"])   return @"iPhone XS Max";
    if ([hardware isEqualToString:@"iPhone11,6"])   return @"iPhone XS Max (China)"; // China dual-sim
    if ([hardware isEqualToString:@"iPhone11,8"])   return @"iPhone XR";

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
    if ([hardware isEqualToString:@"iPad7,5"]) return @"iPad 6G (WiFi)";
    if ([hardware isEqualToString:@"iPad7,6"]) return @"iPad 6G (Cellular)";

//    if ([hardware isEqualToString:@"i386"]) return @"Simulator";
//    if ([hardware isEqualToString:@"x86_64"]) return @"Simulator";
    
    // Apple TV https://www.theiphonewiki.com/wiki/Apple_TV
    if ([hardware isEqualToString:@"AppleTV1,1"]) return @"Apple TV 1G";
    if ([hardware isEqualToString:@"AppleTV2,1"]) return @"Apple TV 2G";
    if ([hardware isEqualToString:@"AppleTV3,1"]) return @"Apple TV 3G";
    if ([hardware isEqualToString:@"AppleTV3,2"]) return @"Apple TV 3G"; // small, incremental update over 3,1
    if ([hardware isEqualToString:@"AppleTV5,3"]) return @"Apple TV 4G"; // as 4,1 was never released, 5,1 is actually 4th generation
    if ([hardware isEqualToString:@"AppleTV6,2"]) return @"Apple TV (4K)";

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
+(KFXDeviceFamily)deviceFamily {
    NSString *modelIdentifier = [self hardwareString];
    if ([modelIdentifier hasSuffix:@"86"] || [modelIdentifier isEqual:@"x86_64"]) {
        BOOL smallerScreen = ([[UIScreen mainScreen] bounds].size.width < 768.0);
        return (smallerScreen ? KFXDeviceFamilyiPhone : KFXDeviceFamilyiPad);
    }
    if ([modelIdentifier hasPrefix:@"iPhone"]) return KFXDeviceFamilyiPhone;
    if ([modelIdentifier hasPrefix:@"iPod"]) return KFXDeviceFamilyiPod;
    if ([modelIdentifier hasPrefix:@"iPad"]) return KFXDeviceFamilyiPad;
    if ([modelIdentifier hasPrefix:@"AppleTV"]) return KFXDeviceFamilyAppleTV;
    if ([modelIdentifier hasPrefix:@"Watch"]) return KFXDeviceFamilyAppleWatch;
    return KFXDeviceFamilyUndefined;
}

+(KFXDeviceScreenSize)deviceScreenSizeType{
    
    KFXDeviceScreenSize type = KFXDeviceScreenSizeUndefined;
    CGSize size = [UIScreen mainScreen].bounds.size;
    KFXDeviceFamily family = [self deviceFamily];
    switch (family  ) {
        case KFXDeviceFamilyiPhone:{
            if (dequal(size.width,KFXCOREiPhoneOriginalScreenSize.width) && dequal(size.height, KFXCOREiPhoneOriginalScreenSize.height)) {
                type = KFXDeviceScreenSizeiPhoneOriginal;
            }else if (dequal(size.width, KFXCOREiPhoneSmallScreenSize.width) && dequal(size.height, KFXCOREiPhoneSmallScreenSize.height)) {
                type = KFXDeviceScreenSizeiPhoneSmall;
            }else if (dequal(size.width, KFXCOREiPhoneRegularScreenSize.width) && dequal(size.height, KFXCOREiPhoneRegularScreenSize.height)) {
                type = KFXDeviceScreenSizeiPhoneRegular;
            }else if (dequal(size.width, KFXCOREiPhonePlusScreenSize.width) && dequal(size.height, KFXCOREiPhonePlusScreenSize.height)) {
                type = KFXDeviceScreenSizeiPhonePlus;
            }else if (dequal(size.width, KFXCOREiPhoneXRegularScreenSize.width) && dequal(size.height, KFXCOREiPhoneXRegularScreenSize.height)) {
                type = KFXDeviceScreenSizeiPhoneXRegular;
            }else if (dequal(size.width, KFXCOREiPhoneXLargeScreenSize.width) && dequal(size.height, KFXCOREiPhoneXLargeScreenSize.height)) {
                type = KFXDeviceScreenSizeiPhoneXLarge;
            }
            break;
        }
        case KFXDeviceFamilyiPad:{
            if (dequal(size.width, KFXCOREiPadRegularScreenSize.width) && dequal(size.height, KFXCOREiPadRegularScreenSize.height)) {
                type = KFXDeviceScreenSizeiPadRegular;
            }else if (dequal(size.width, KFXCOREiPadPro9InchScreenSize.width) && dequal(size.height, KFXCOREiPadPro9InchScreenSize.height)) {
                type = KFXDeviceScreenSizeiPadPro9Inch;
            }else if (dequal(size.width, KFXCOREiPadPro10InchScreenSize.width) && dequal(size.height, KFXCOREiPadPro10InchScreenSize.height)) {
                type = KFXDeviceScreenSizeiPadPro10Inch;
            }else if (dequal(size.width, KFXCOREiPadPro12InchScreenSize.width) && dequal(size.height, KFXCOREiPadPro12InchScreenSize.height)) {
                type = KFXDeviceScreenSizeiPadPro12Inch;
            }
            break;
        }
        case KFXDeviceFamilyAppleWatch:{
            if (dequal(size.width, KFXCOREAppleWatch38mmScreenSize.width) && dequal(size.height, KFXCOREAppleWatch38mmScreenSize.height)) {
                type = KFXDeviceScreenSizeAppleWatch38mm;
            }else if (dequal(size.width, KFXCOREAppleWatch40mmScreenSize.width) && dequal(size.height, KFXCOREAppleWatch40mmScreenSize.height)) {
                type = KFXDeviceScreenSizeAppleWatch40mm;
            }else if (dequal(size.width, KFXCOREAppleWatch42mmScreenSize.width) && dequal(size.height, KFXCOREAppleWatch42mmScreenSize.height)) {
                type = KFXDeviceScreenSizeAppleWatch42mm;
            }else if (dequal(size.width, KFXCOREAppleWatch44mmScreenSize.width) && dequal(size.height, KFXCOREAppleWatch44mmScreenSize.height)) {
                type = KFXDeviceScreenSizeAppleWatch44mm;
            }
            break;
        }
        case KFXDeviceFamilyiPod:{
            type = KFXDeviceScreenSizeUndefined;
            break;
        }
        case  KFXDeviceFamilyAppleTV:{
            type = KFXDeviceScreenSizeUndefined;
            break;
        }
        default:
            NSAssert(NO,@"Hit default case of a switch statement. %s. Value is : %ld",__PRETTY_FUNCTION__, (long)KFXDeviceFamilyString(family));
            
            break;
    }
    return type;
}


+(KFXDeviceResolution)deviceResolutionType{
    
    KFXDeviceResolution type = KFXDeviceResolutionUndefined;
    CGSize size = [UIScreen mainScreen].nativeBounds.size;
    KFXDeviceFamily family = [self deviceFamily];
    switch (family  ) {
        case KFXDeviceFamilyiPhone:{
            if (dequal(size.width,KFXCOREiPhoneOriginalNonRetinaResolution.width) && dequal(size.height, KFXCOREiPhoneOriginalNonRetinaResolution.height)) {
                type = KFXDeviceResolutioniPhoneOriginalNonRetina;
            }else if (dequal(size.width,KFXCOREiPhoneOriginalRetinaResolution.width) && dequal(size.height, KFXCOREiPhoneOriginalRetinaResolution.height)) {
                type = KFXDeviceResolutioniPhoneOriginalRetina;
            }else if (dequal(size.width, KFXCOREiPhoneSmallResolution.width) && dequal(size.height, KFXCOREiPhoneSmallResolution.height)) {
                type = KFXDeviceResolutioniPhoneSmall;
            }else if (dequal(size.width, KFXCOREiPhoneRegularResolution.width) && dequal(size.height, KFXCOREiPhoneRegularResolution.height)) {
                type = KFXDeviceResolutioniPhoneRegular;
            }else if (dequal(size.width, KFXCOREiPhonePlusPhysicalResolution.width) && dequal(size.height, KFXCOREiPhonePlusPhysicalResolution.height)) {
                type = KFXDeviceResolutioniPhonePlus;
            }else if (dequal(size.width, KFXCOREiPhoneXResolution.width) && dequal(size.height, KFXCOREiPhoneXResolution.height)) {
                type = KFXDeviceResolutioniPhoneX;
            }else if (dequal(size.width, KFXCOREiPhoneXrResolution.width) && dequal(size.height, KFXCOREiPhoneXrResolution.height)) {
                type = KFXDeviceResolutioniPhoneXr;
            }else if (dequal(size.width, KFXCOREiPhoneXMaxResolution.width) && dequal(size.height, KFXCOREiPhoneXMaxResolution.height)) {
                type = KFXDeviceResolutioniPhoneXMax;
            }
            break;
        }
        case KFXDeviceFamilyiPad:{
            if (dequal(size.width, KFXCOREiPadOriginalResolution.width) && dequal(size.height, KFXCOREiPadOriginalResolution.height)) {
                type = KFXDeviceResolutioniPadOriginal;
            }else if (dequal(size.width, KFXCOREiPadRegularResolution.width) && dequal(size.height, KFXCOREiPadRegularResolution.height)) {
                type = KFXDeviceResolutioniPadRegular;
            }else if (dequal(size.width, KFXCOREiPadPro9InchResolution.width) && dequal(size.height, KFXCOREiPadPro9InchResolution.height)) {
                type = KFXDeviceResolutioniPadPro9Inch;
            }else if (dequal(size.width, KFXCOREiPadPro10InchResolution.width) && dequal(size.height, KFXCOREiPadPro10InchResolution.height)) {
                type = KFXDeviceResolutioniPadPro10Inch;
            }else if (dequal(size.width, KFXCOREiPadPro12InchResolution.width) && dequal(size.height, KFXCOREiPadPro12InchResolution.height)) {
                type = KFXDeviceResolutioniPadPro12Inch;
            }
            break;
        }
        case KFXDeviceFamilyAppleWatch:{
            if (dequal(size.width, KFXCOREAppleWatch38mmResolution.width) && dequal(size.height, KFXCOREAppleWatch38mmResolution.height)) {
                type = KFXDeviceResolutionAppleWatch38mm;
            }else if (dequal(size.width, KFXCOREAppleWatch40mmResolution.width) && dequal(size.height, KFXCOREAppleWatch40mmResolution.height)) {
                type = KFXDeviceResolutionAppleWatch40mm;
            }else if (dequal(size.width, KFXCOREAppleWatch42mmResolution.width) && dequal(size.height, KFXCOREAppleWatch42mmResolution.height)) {
                type = KFXDeviceResolutionAppleWatch42mm;
            }else if (dequal(size.width, KFXCOREAppleWatch44mmResolution.width) && dequal(size.height, KFXCOREAppleWatch44mmResolution.height)) {
                type = KFXDeviceResolutionAppleWatch44mm;
            }
            break;
        }
        case KFXDeviceFamilyiPod:{
            type = KFXDeviceResolutionUndefined;
            break;
        }
        case  KFXDeviceFamilyAppleTV:{
            type = KFXDeviceResolutionUndefined;
            break;
        }
        default:
            NSAssert(NO,@"Hit default case of a switch statement. %s. Value is : %ld",__PRETTY_FUNCTION__, (long)KFXDeviceFamilyString(family));
            
            break;
    }
    return type;
}

+(BOOL)hasNotch{
    
    KFXDeviceScreenSize screenSize = [self deviceScreenSizeType];
    return (screenSize == KFXDeviceScreenSizeiPhoneXRegular
            || screenSize == KFXDeviceScreenSizeiPhoneXLarge);
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
