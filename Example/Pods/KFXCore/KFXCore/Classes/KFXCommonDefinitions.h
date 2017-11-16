/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXCore
 *
 ************************************/


@import Foundation;
@import CoreGraphics;
@class UIImage;



//-----------------------------------
// Directions
//-----------------------------------
typedef NS_ENUM (NSInteger, KFXCardinalDirection){
    KFXCardinalDirectionUndefined = 0,
    KFXCardinalDirectionNorth,
    KFXCardinalDirectionEast,
    KFXCardinalDirectionSouth,
    KFXCardinalDirectionWest
};

typedef NS_ENUM (NSInteger, KFXDirection) {
    KFXDirectionUndefined = 0,
    KFXDirectionTopToBottom,
    KFXDirectionRightToLeft,
    KFXDirectionBottomToTop,
    KFXDirectionLeftToRight,
    KFXDirectionTopLeftToBottomRight,
    KFXDirectionTopRightToBottomLeft,
    KFXDirectionBottomLeftToTopRight,
    KFXDirectionBottomRightToTopLeft
};


//-----------------------------------
// Edge
//-----------------------------------
typedef NS_ENUM (NSInteger, KFXEdge) {
    KFXEdgeUndefined = 0,
    KFXEdgeUp,
    KFXEdgeRight,
    KFXEdgeDown,
    KFXEdgeLeft
};


//-----------------------------------
// Device
//-----------------------------------
typedef NS_ENUM (NSInteger, KFXDeviceScreenSize){
    KFXDeviceScreenSizeUndefined = 0,
    KFXDeviceScreenSizeiPhoneOriginal,
    KFXDeviceScreenSizeiPhoneSmall,
    KFXDeviceScreenSizeiPhoneRegular,
    KFXDeviceScreenSizeiPhonePlus,
    KFXDeviceScreenSizeiPhoneX,
    KFXDeviceScreenSizeiPadMini,
    KFXDeviceScreenSizeiPadRegular,
    KFXDeviceScreenSizeiPadPro9Inch,
    KFXDeviceScreenSizeiPadPro10Inch,
    KFXDeviceScreenSizeiPadPro12Inch,
    KFXDeviceScreenSizeAppleWatch38mm,
    KFXDeviceScreenSizeAppleWatch42mm
};

typedef NS_ENUM(NSUInteger, KFXDeviceFamily) {
    KFXDeviceFamilyUndefined = 0,
    KFXDeviceFamilyiPhone,
    KFXDeviceFamilyiPod,
    KFXDeviceFamilyiPad,
    KFXDeviceFamilyAppleTV,
    KFXDeviceFamilyAppleWatch,
};



//-----------------------------------
// Completion Block with no params
//-----------------------------------
typedef void(^KFXCompletionBlock)(void);

//-----------------------------------
// Happenings
//-----------------------------------
typedef void(^KFXUpdateOccurredBlock)(BOOL updateOccurred);
typedef void(^KFXUpdateOccurredResultBlock)(BOOL updateOccured, NSError *_Nullable error);
typedef void(^KFXSuccessResultBlock)(BOOL success, NSError *_Nullable error);
typedef void(^KFXProgressBlock)(CGFloat progress);
typedef void(^KFXProgressAndMessageBlock)(CGFloat progress, NSString *_Nullable message);
typedef void(^KFXSyncResultArraysBlock)(NSArray *_Nullable created, NSArray *_Nullable updated, NSArray *_Nullable deleted);
typedef void(^KFXSyncResultDictionarysBlock)(NSDictionary *_Nullable created, NSDictionary *_Nullable updated, NSDictionary *_Nullable deleted);
typedef void(^KFXSyncResultAnonObjectsBlock)(id _Nullable created, id _Nullable updated, id  _Nullable deleted);


//-----------------------------------
// Generic Primitives
//-----------------------------------
typedef void(^KFXBooleanResultBlock)(BOOL boolValue);
typedef void(^KFXBooleanAndErrorResultBlock)(BOOL boolValue, NSError *_Nullable error);
typedef void(^KFXNSIntegerResultBlock)(NSInteger integer, NSError *_Nullable error);
typedef void(^KFXNSUnsignedIntegerResultBlock)(NSUInteger uInteger, NSError *_Nullable error);
typedef void(^KFXFloatResultBlock)(float aFloat, NSError *_Nullable error);
typedef void(^KFXDoubleResultBlock)(double aDouble, NSError *_Nullable error);
typedef void(^KFXCGFloatResultBlock)(CGFloat aCGFloat, NSError *_Nullable error);
typedef void(^KFXIntResultBlock)(int anInt, NSError *_Nullable error);


//-----------------------------------
// Objects
//-----------------------------------
typedef void(^KFXAnonymousObjectResultBlock)(id _Nullable object, NSError *_Nullable error);
typedef void(^KFXNSArrayResultBlock)(NSArray *_Nullable array, NSError *_Nullable error);
typedef void(^KFXNSDictionaryResultBlock)(NSDictionary *_Nullable dictionary, NSError *_Nullable error);
typedef void(^KFXNSSetResultBlock)(NSSet *_Nullable set, NSError *_Nullable error);
typedef void(^KFXNSDataResultBlock)(NSData *_Nullable data, NSError *_Nullable error);
typedef void(^KFXNSDateResultBlock)(NSDate *_Nullable date, NSError *_Nullable error);
typedef void(^KFXNSStringResultBlock)(NSString *_Nullable string, NSError *_Nullable error);
typedef void(^KFXNSNumberResultBlock)(NSNumber *_Nullable number, NSError *_Nullable error);
typedef void(^KFXNSURLResultBlock)(NSURL *_Nullable url, NSError *_Nullable error);
typedef void(^KFXUIImageResultBlock)(UIImage *_Nullable image, NSError*_Nullable error);






@interface KFXCommonDefinitions : NSObject


//-----------------------------------
// Strings from Enums
//-----------------------------------
NSString*_Nullable KFXCardinalDirectionString(KFXCardinalDirection direction);
NSString*_Nullable KFXDirectionString(KFXDirection direction);
NSString*_Nullable KFXEdgeString(KFXEdge edge);
NSString*_Nullable KFXDeviceScreenSizeString(KFXDeviceScreenSize screenSize);
NSString*_Nullable KFXDeviceFamilyString(KFXDeviceFamily family);










@end












