/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * For full licence details see License.md
 *
 * This file is part of KFXLocalSystemReporter
 *
 ************************************/


#import "KFXSoftwareReporter.h"

@implementation KFXSoftwareReporter


#pragma mark - OS
+(NSString *)operatingSystemVersionString{
    NSString *currSysVer = [[UIDevice currentDevice] systemVersion];
    return currSysVer;
}

#pragma mark - Software
+(NSString *)buildNumber{
    return [[NSBundle mainBundle]objectForInfoDictionaryKey:@"CFBundleVersion"];
}

+(NSString *)versionNumber{
    return [[NSBundle mainBundle]objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+(NSString*)bundleName{
    return [[NSBundle mainBundle]objectForInfoDictionaryKey:@"CFBundleName"];

}

+(NSString*)bundleDisplayName{
    return [[NSBundle mainBundle]objectForInfoDictionaryKey:@"CFBundleDisplayName"];

}

+(NSString*)bundleIdentifier{
    return [[NSBundle mainBundle]objectForInfoDictionaryKey:@"CFBundleIdentifer"];

}

+(id)valueFromInfoPlistForKey:(NSString *)key{
    return [[NSBundle mainBundle]objectForInfoDictionaryKey:key];
}

@end
