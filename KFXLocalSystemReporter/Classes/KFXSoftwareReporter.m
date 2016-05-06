//
//  KFXSoftwareReporter.m
//  Pods
//
//  Created by Eyeye on 06/05/2016.
//
//

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



@end
