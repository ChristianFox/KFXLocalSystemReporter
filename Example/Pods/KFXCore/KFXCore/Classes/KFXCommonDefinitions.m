

#import "KFXCommonDefinitions.h"

@implementation KFXCommonDefinitions


NSString* KFXCardinalDirectionString(KFXCardinalDirection direction){
    
    NSString *string;
    switch (direction) {
        case KFXCardinalDirectionNorth:{
            string = @"North";
            break;
        }
        case KFXCardinalDirectionEast:{
            string = @"East";
            break;
        }
        case KFXCardinalDirectionSouth:{
            string = @"South";
            break;
        }
        case KFXCardinalDirectionWest:{
            string = @"West";
            break;
        }
        default:
            string = @"Undefined";
            break;
    }
    return string;
}

NSString*_Nullable KFXDirectionString(KFXDirection direction){
    
    NSString *string;
    switch (direction) {
        case KFXDirectionTopToBottom:{
            string = @"Top to Bottom";
            break;
        }
        case KFXDirectionRightToLeft:{
            string = @"Right to Left";
            break;
        }
        case KFXDirectionBottomToTop:{
            string = @"Bottom to Top";
            break;
        }
        case KFXDirectionLeftToRight:{
            string = @"Left to Right";
            break;
        }
        case KFXDirectionTopLeftToBottomRight:{
            string = @"Top-Left to Bottom-Right";
            break;
        }
        case KFXDirectionTopRightToBottomLeft:{
            string = @"Top-Right to Bottom-Left";
            break;
        }
        case KFXDirectionBottomLeftToTopRight:{
            string = @"Bottom-Left to Top-Right";
            break;
        }
        case KFXDirectionBottomRightToTopLeft:{
            string = @"Bottom-Right to Top-Left";
            break;
        }
        default:
            string = @"Undefined";
            break;
    }
    return string;
}


NSString*_Nullable KFXEdgeString(KFXEdge edge){
    
    NSString *string;
    switch (edge) {
        case KFXEdgeUp:{
            string = @"Up";
            break;
        }
        case KFXEdgeRight:{
            string = @"Right";
            break;
        }
        case KFXEdgeDown:{
            string = @"Down";
            break;
        }
        case KFXEdgeLeft:{
            string = @"Left";
            break;
        }
        default:
            string = @"Undefined";
            break;
    }
    return string;
}

NSString*_Nullable KFXDeviceScreenSizeString(KFXDeviceScreenSize screenSize){
    
    NSString *string;
    switch (screenSize) {
        case KFXDeviceScreenSizeiPhoneOriginal:{
            string = @"iPhone Original";
            break;
        }
        case KFXDeviceScreenSizeiPhoneSmall:{
            string = @"iPhone Small";
            break;
        }
        case KFXDeviceScreenSizeiPhoneRegular:{
            string = @"iPhone Regular";
            break;
        }
        case KFXDeviceScreenSizeiPhonePlus:{
            string = @"iPhone Plus";
            break;
        }
        case KFXDeviceScreenSizeiPhoneX:{
            string = @"iPhone X";
            break;
        }
        case KFXDeviceScreenSizeiPadMini:{
            string = @"iPad Mini";
            break;
        }
        case KFXDeviceScreenSizeiPadRegular:{
            string = @"iPad Regular";
            break;
        }
        case KFXDeviceScreenSizeiPadPro9Inch:{
            string = @"iPro Pad 9 Inch";
            break;
        }
        case KFXDeviceScreenSizeiPadPro10Inch:{
            string = @"iPro Pad 10 Inch";
            break;
        }
        case KFXDeviceScreenSizeiPadPro12Inch:{
            string = @"iPro Pad 12 Inch";
            break;
        }
        case KFXDeviceScreenSizeAppleWatch38mm:{
            string = @"Apple Watch 38mm";
            break;
        }
        case KFXDeviceScreenSizeAppleWatch42mm:{
            string = @"Apple Watch 42mm";
            break;
        }
        default:
            string = @"Undefined";
            break;
    }
    return string;
}

NSString*_Nullable KFXDeviceFamilyString(KFXDeviceFamily family){
    
    NSString *string;
    switch (family) {
        case KFXDeviceFamilyiPhone:{
            string = @"iPhone";
            break;
        }
        case KFXDeviceFamilyiPod:{
            string = @"iPod";
            break;
        }
        case KFXDeviceFamilyiPad:{
            string = @"iPad";
            break;
        }
        case KFXDeviceFamilyAppleTV:{
            string = @"Apple TV";
            break;
        }
        case KFXDeviceFamilyAppleWatch:{
            string = @"Apple Watch";
            break;
        }
        default:
            string = @"Undefined";
            break;
    }
    return string;
}















@end
