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
@class KFXSectionData;

@interface KFXCellData : NSObject

@property (copy,nonatomic) NSString *title;
@property (copy,nonatomic) NSString *identifier;
@property (copy,nonatomic) NSString *reuseIdentifier;
@property (nonatomic) NSInteger tag;
@property (strong,nonatomic) id contents;
@property (weak,nonatomic) KFXSectionData *sectionData;

+(instancetype)cellData;
+(instancetype)cellDataWithContents:(id)contents;

-(NSIndexPath*)indexPath;

@end
