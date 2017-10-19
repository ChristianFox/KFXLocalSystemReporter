/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSKeyedUnarchiver (KFXAdditions)

+(id)kfx_unarchiveObjectFromDirectoryPath:(NSString*)dirPath
                             withFileName:(NSString*)fileName
                                    error:(NSError *__autoreleasing  _Nullable *)error;


@end
NS_ASSUME_NONNULL_END
