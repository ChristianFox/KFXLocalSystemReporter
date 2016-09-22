//
//  KFXSoftwareReporter.h
//  Pods
//
//  Created by Eyeye on 06/05/2016.
//
//

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
