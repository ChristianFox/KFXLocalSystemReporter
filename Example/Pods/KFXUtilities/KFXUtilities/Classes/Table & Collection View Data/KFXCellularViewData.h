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
#import "KFXSectionData.h"
#import "KFXCellData.h"

@interface KFXCellularViewData : NSObject

@property (strong,nonatomic) NSMutableArray<__kindof KFXSectionData*> *sections;
@property (copy,nonatomic) NSString *identifier;
@property (nonatomic) NSInteger tag;
@property (copy,nonatomic) NSString *title;

+(instancetype)cellularViewData;
-(void)addSection:(KFXSectionData*)section;
-(void)addSectionsFromArray:(NSArray<KFXSectionData*>*)sections;
-(void)insertSection:(KFXSectionData*)section atIndex:(NSInteger)index;
-(void)addCell:(KFXCellData*)cell toSectionAtIndex:(NSInteger)sectionIndex;
-(void)insertCell:(KFXCellData*)cell atIndexPath:(NSIndexPath*)indexPath;
-(void)deleteCellAtIndexPath:(NSIndexPath*)indexPath;

-(__kindof KFXSectionData*)sectionForTag:(NSInteger)tag;
-(__kindof KFXSectionData*)sectionForIdentifier:(NSString*)identifier;
-(KFXCellData*)cellForTag:(NSInteger)tag;
-(KFXCellData*)cellForIdentifier:(NSString*)identifier;
-(KFXCellData*)cellForIndexPath:(NSIndexPath*)indexPath;

-(NSInteger)count;

@end
