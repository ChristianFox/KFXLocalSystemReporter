/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXCore
 *
 ************************************/

#import <Foundation/Foundation.h>
// Cocoa Frameworks
@import CoreGraphics;

@interface KFXCommonConstants : NSObject


//--------------------------------------------------------
#pragma mark - GeoLocation Constants
//--------------------------------------------------------
extern double const kMetresPerDegreeLatitude;
extern double const kMetresPerDegreeLongitude;
extern double const kDegreesPerMetreLatitude;
extern double const kDegreesPerMetreLongitude;

extern double const kFeetPerMile;
extern double const kMetresPerMile;
extern double const kFeetPerKilometre;
extern double const kKilometresPerMile;
extern double const kMilesPerKilometre;

extern double const kPoundsPerKilogram;
extern double const kKilogramsPerPound;


extern double const kDegreesToRadians;
extern double const kRadiansToDegrees;


//--------------------------------------------------------
#pragma mark - Device Screen Sizes
//--------------------------------------------------------
extern CGSize const kiPhoneXScreenSize; // X
extern CGSize const kiPhonePlusScreenSize; // 6+, 7+, 8+
extern CGSize const kiPhoneRegularScreenSize; // 6, 6s, 7, 8
extern CGSize const kiPhoneSmallScreenSize; // 5, 5s, 5c, SE
extern CGSize const kiPhoneOriginalScreenSize; // 4, 4s, 3, 3g
extern CGSize const kiPadMiniScreenSize; // Mini, 2, 3, 4 etc
extern CGSize const kiPadRegularScreenSize; // Air, iPad 3, 4, 9.7 inch pro
extern CGSize const kiPadPro9InchScreenSize; // 9.7 inch pro
extern CGSize const kiPadPro10InchScreenSize; // 10.5 inch pro
extern CGSize const kiPadPro12InchScreenSize; // 12.9 inch pro
extern CGSize const kAppleWatch38mmScreenSize; // 38mm watch
extern CGSize const kAppleWatch42mmScreenSize; // 42mm watch

//--------------------------------------------------------
#pragma mark UI Kit dimensions
//--------------------------------------------------------
extern CGFloat const kUIKitStatusBarHeight;
extern CGFloat const kUIKitNavigationBarStandardHeight;
extern CGFloat const kUIKitNavigationBarLandscapeReducedHeight;
extern CGFloat const kUIKitTabBarHeight;

//--------------------------------------------------------
#pragma mark - Common Keys
//--------------------------------------------------------
extern NSString *const kImagePlaceholderNameKEY;
extern NSString *const kImageNameKEY;
extern NSString *const kImageKEY;
extern NSString *const kTextPlaceholderKEY;
extern NSString *const kTextKEY;




@end
