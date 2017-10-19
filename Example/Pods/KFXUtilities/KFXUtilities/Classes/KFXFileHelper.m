/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXUtilities
 *
 ************************************/


#import "KFXFileHelper.h"
@import MobileCoreServices;

@implementation KFXFileHelper

+(instancetype)fileHelper{
    KFXFileHelper *helper = [[self alloc]init];
    return helper;
}

-(NSString *)kfx_mimeTypeForFilePath:(NSString *)filePath{
    CFStringRef fileExtension = (__bridge CFStringRef)[filePath pathExtension];
    CFStringRef UTI = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, fileExtension, NULL);
    CFStringRef MIMEType = UTTypeCopyPreferredTagWithClass(UTI, kUTTagClassMIMEType);
    CFRelease(UTI);
    NSString *MIMETypeString = (__bridge_transfer NSString *)MIMEType;
    return MIMETypeString;

}

-(NSString *)kfx_uniformTypeIdentifierForURLResponse:(NSURLResponse *)response{
    CFStringRef MIMEType = (__bridge CFStringRef)[response MIMEType];
    CFStringRef UTI = UTTypeCreatePreferredIdentifierForTag(kUTTagClassMIMEType, MIMEType, NULL);
    NSString *UTIString = (__bridge_transfer NSString *)UTI;
    return UTIString;
}

@end
