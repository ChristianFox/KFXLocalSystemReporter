/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * For full licence details see License.md
 *
 * This file is part of KFXLocalSystemReporter
 *
 ************************************/



#import <Foundation/Foundation.h>

@interface KFXSoftwareReporter : NSObject


// OS
+(NSString*)operatingSystemVersionString;

// Info Plist
+(NSString*)buildNumber;
+(NSString*)versionNumber;
+(NSString*)bundleName;
+(NSString*)bundleDisplayName;
+(NSString*)bundleIdentifier;
+(id)valueFromInfoPlistForKey:(NSString*)key;

@end
