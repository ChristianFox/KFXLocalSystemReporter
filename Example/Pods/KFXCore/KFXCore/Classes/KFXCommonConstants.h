/********************************
 *
 * KFXCore https://github.com/ChristianFox/KFXCore
 *
 * Copyright (c) 2016-2018 ChristianFox <christianfox@kfxtech.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * This file is included with KFXCore
 *
 ************************************/

#import <Foundation/Foundation.h>
// Cocoa Frameworks
@import CoreGraphics;

@interface KFXCommonConstants : NSObject


//--------------------------------------------------------
#pragma mark GeoLocation & Distance Constants
//--------------------------------------------------------
extern double const KFXCOREMetresPerDegreeLatitude;
extern double const KFXCOREMetresPerDegreeLongitude;
extern double const KFXCOREDegreesPerMetreLatitude;
extern double const KFXCOREDegreesPerMetreLongitude;

extern double const KFXCOREFeetPerMile;
extern double const KFXCOREMetresPerMile;
extern double const KFXCOREFeetPerKilometre;
extern double const KFXCOREKilometresPerMile;
extern double const KFXCOREMilesPerKilometre;

extern double const KFXCOREDegreesToRadians;
extern double const KFXCORERadiansToDegrees;

//--------------------------------------------------------
#pragma mark Mass Constants
//--------------------------------------------------------
extern double const KFXCOREPoundsPerKilogram;
extern double const KFXCOREKilogramsPerPound;


//--------------------------------------------------------
#pragma mark Time
//--------------------------------------------------------
extern NSInteger const KFXCORESecondsPerMinute;
extern NSInteger const KFXCOREMinutesPerHour;
extern NSInteger const KFXCOREHoursPerDay;
extern NSInteger const KFXCOREDaysPerWeekGregorian;
extern NSInteger const KFXCOREWeeksPerYearGregorian;
extern NSInteger const KFXCOREMonthsPerYearGregorian;
extern NSInteger const KFXCOREDaysPerYearNonLeapGregorian;
extern NSInteger const KFXCOREDaysPerYearLeapGregorian;


//--------------------------------------------------------
#pragma mark Device Screen Sizes
//--------------------------------------------------------
extern CGSize const KFXCOREiPhoneXScreenSize; // X
extern CGSize const KFXCOREiPhonePlusScreenSize; // 6+, 7+, 8+
extern CGSize const KFXCOREiPhoneRegularScreenSize; // 6, 6s, 7, 8
extern CGSize const KFXCOREiPhoneSmallScreenSize; // 5, 5s, 5c, SE
extern CGSize const KFXCOREiPhoneOriginalScreenSize; // 4, 4s, 3, 3g
extern CGSize const KFXCOREiPadMiniScreenSize; // Mini, 2, 3, 4 etc
extern CGSize const KFXCOREiPadRegularScreenSize; // Air, iPad 3, 4, 9.7 inch pro
extern CGSize const KFXCOREiPadPro9InchScreenSize; // 9.7 inch pro
extern CGSize const KFXCOREiPadPro10InchScreenSize; // 10.5 inch pro
extern CGSize const KFXCOREiPadPro12InchScreenSize; // 12.9 inch pro
extern CGSize const KFXCOREAppleWatch38mmScreenSize; // 38mm watch
extern CGSize const KFXCOREAppleWatch42mmScreenSize; // 42mm watch


//--------------------------------------------------------
#pragma mark UI Kit dimensions
//--------------------------------------------------------
extern CGFloat const KFXCOREUIKitStatusBarHeight;
extern CGFloat const KFXCOREUIKitNavigationBarStandardHeight;
extern CGFloat const KFXCOREUIKitNavigationBarLandscapeReducedHeight;
extern CGFloat const KFXCOREUIKitTabBarHeight;


//--------------------------------------------------------
#pragma mark - Common Keys
//--------------------------------------------------------
extern NSString *const KFXCOREImagePlaceholderNameKEY;
extern NSString *const KFXCOREImageNameKEY;
extern NSString *const KFXCOREImageKEY;
extern NSString *const KFXCORETextPlaceholderKEY;
extern NSString *const KFXCORETextKEY;
extern NSString *const KFXCOREURLKEY;
extern NSString *const KFXCOREPathKEY;






@end


