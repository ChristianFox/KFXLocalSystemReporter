/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXCore
 *
 ************************************/


#import "KFXCommonConstants.h"

@implementation KFXCommonConstants


//--------------------------------------------------------
#pragma mark - GeoLocation Constants
//--------------------------------------------------------
double const kMetresPerDegreeLatitude = 110574.27608210722;
double const kMetresPerDegreeLongitude = 111319.2895857656;
double const kDegreesPerMetreLatitude = 0.0000090437;
double const kDegreesPerMetreLongitude = 0.0000089832;

double const kFeetPerMile = 5280.0;
double const kMetresPerMile = 1609.34;
double const kFeetPerKilometre = 3280.838879986877;
double const kKilometresPerMile = 1.60934;
double const kMilesPerKilometre = 0.621371;

double const kPoundsPerKilogram = 2.2046226218487757;
double const kKilogramsPerPound = 0.45359237;

double const kDegreesToRadians = M_PI / 180.0;
double const kRadiansToDegrees = 180.0 / M_PI;

//--------------------------------------------------------
#pragma mark - Device Sizes
//--------------------------------------------------------
CGSize const kiPhoneXScreenSize = {375.0,812.0}; // X
CGSize const kiPhonePlusScreenSize = {414.0,736.0}; // 6+, 7+
CGSize const kiPhoneRegularScreenSize = {375.0,667.0,}; // 6, 6s, 7
CGSize const kiPhoneSmallScreenSize = {320.0,568.0}; // 5, 5s, 5c, SE
CGSize const kiPhoneOriginalScreenSize = {320.0,480.0}; // 4, 4s, 3, 3g
CGSize const kiPadMiniScreenSize = {768.0,1024.0};// Mini, 2, 3, 4 etc
CGSize const kiPadRegularScreenSize = {768.0,1024.0};// Air, iPad 3, 4, 9.7 inch pro
CGSize const kiPadPro9InchScreenSize = {1024.0,768.0}; // 9.7 inch pro
CGSize const kiPadPro10InchScreenSize = {834.0,1112.0}; // 10.5 inch pro
CGSize const kiPadPro12InchScreenSize = {1024.0,1366.0}; // 12.9 inch pro
CGSize const kAppleWatch38mmScreenSize = {272.0,340.0}; // 38mm watch
CGSize const kAppleWatch42mmScreenSize = {312.0,390.0}; // 42mm watch


//--------------------------------------------------------
#pragma mark UI Kit dimensions
//--------------------------------------------------------
CGFloat const kUIKitStatusBarHeight = 20.0;
CGFloat const kUIKitNavigationBarStandardHeight = 44.0;
CGFloat const kUIKitNavigationBarLandscapeReducedHeight = 32.0;
CGFloat const kUIKitTabBarHeight = 49.0;

//--------------------------------------------------------
#pragma mark - Common Keys
//--------------------------------------------------------
NSString *const kImagePlaceholderNameKEY = @"placeholderName";
NSString *const kImageNameKEY = @"imageName";
NSString *const kImageKEY = @"image";
NSString *const kTextPlaceholderKEY = @"placeholder";
NSString *const kTextKEY = @"text";

@end
