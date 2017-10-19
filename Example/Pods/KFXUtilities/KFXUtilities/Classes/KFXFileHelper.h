/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXUtilities
 *
 ************************************/


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KFXFileHelper : NSObject

+(instancetype)fileHelper;

-(NSString*)kfx_mimeTypeForFilePath:(NSString*)filePath;
-(NSString*)kfx_uniformTypeIdentifierForURLResponse:(NSURLResponse*)response;


@end
NS_ASSUME_NONNULL_END
