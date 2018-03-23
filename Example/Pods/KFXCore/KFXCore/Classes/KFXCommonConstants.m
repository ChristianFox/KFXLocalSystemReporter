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


#import "KFXCommonConstants.h"

@implementation KFXCommonConstants


//--------------------------------------------------------
#pragma mark GeoLocation & Distance Constants
//--------------------------------------------------------
double const KFXCOREMetresPerDegreeLatitude = 110574.27608210722;
double const KFXCOREMetresPerDegreeLongitude = 111319.2895857656;
double const KFXCOREDegreesPerMetreLatitude = 0.0000090437;
double const KFXCOREDegreesPerMetreLongitude = 0.0000089832;

double const KFXCOREFeetPerMile = 5280.0;
double const KFXCOREMetresPerMile = 1609.34;
double const KFXCOREFeetPerKilometre = 3280.838879986877;
double const KFXCOREKilometresPerMile = 1.60934;
double const KFXCOREMilesPerKilometre = 0.621371;

double const KFXCOREDegreesToRadians = M_PI / 180.0;
double const KFXCORERadiansToDegrees = 180.0 / M_PI;

//--------------------------------------------------------
#pragma mark Mass Constants
//--------------------------------------------------------
double const KFXCOREPoundsPerKilogram = 2.2046226218487757;
double const KFXCOREKilogramsPerPound = 0.45359237;


//--------------------------------------------------------
#pragma mark Time
//--------------------------------------------------------
NSInteger const KFXCORESecondsPerMinute = 60;
NSInteger const KFXCOREMinutesPerHour = 60;
NSInteger const KFXCOREHoursPerDay = 24;
NSInteger const KFXCOREDaysPerWeekGregorian = 7;
NSInteger const KFXCOREWeeksPerYearGregorian = 52;
NSInteger const KFXCOREMonthsPerYearGregorian = 12;
NSInteger const KFXCOREDaysPerYearNonLeapGregorian = 365;
NSInteger const KFXCOREDaysPerYearLeapGregorian = 366;

//--------------------------------------------------------
#pragma mark - Device Sizes
//--------------------------------------------------------
CGSize const KFXCOREiPhoneXScreenSize = {375.0,812.0}; // X
CGSize const KFXCOREiPhonePlusScreenSize = {414.0,736.0}; // 6+, 7+
CGSize const KFXCOREiPhoneRegularScreenSize = {375.0,667.0,}; // 6, 6s, 7
CGSize const KFXCOREiPhoneSmallScreenSize = {320.0,568.0}; // 5, 5s, 5c, SE
CGSize const KFXCOREiPhoneOriginalScreenSize = {320.0,480.0}; // 4, 4s, 3, 3g
CGSize const KFXCOREiPadMiniScreenSize = {768.0,1024.0};// Mini, 2, 3, 4 etc
CGSize const KFXCOREiPadRegularScreenSize = {768.0,1024.0};// Air, iPad 3, 4, 9.7 inch pro
CGSize const KFXCOREiPadPro9InchScreenSize = {1024.0,768.0}; // 9.7 inch pro
CGSize const KFXCOREiPadPro10InchScreenSize = {834.0,1112.0}; // 10.5 inch pro
CGSize const KFXCOREiPadPro12InchScreenSize = {1024.0,1366.0}; // 12.9 inch pro
CGSize const KFXCOREAppleWatch38mmScreenSize = {272.0,340.0}; // 38mm watch
CGSize const KFXCOREAppleWatch42mmScreenSize = {312.0,390.0}; // 42mm watch


//--------------------------------------------------------
#pragma mark UI Kit dimensions
//--------------------------------------------------------
CGFloat const KFXCOREUIKitStatusBarHeight = 20.0;
CGFloat const KFXCOREUIKitNavigationBarStandardHeight = 44.0;
CGFloat const KFXCOREUIKitNavigationBarLandscapeReducedHeight = 32.0;
CGFloat const KFXCOREUIKitTabBarHeight = 49.0;

//--------------------------------------------------------
#pragma mark - Common Keys
//--------------------------------------------------------
NSString *const KFXCOREImagePlaceholderNameKEY = @"placeholderName";
NSString *const KFXCOREImageNameKEY = @"imageName";
NSString *const KFXCOREImageKEY = @"image";
NSString *const KFXCORETextPlaceholderKEY = @"placeholder";
NSString *const KFXCORETextKEY = @"text";
NSString *const KFXCOREURLKEY = @"url";
NSString *const KFXCOREPathKEY = @"path";






@end






