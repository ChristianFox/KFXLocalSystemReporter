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
@class KFXCellData, KFXCellularViewData;

@interface KFXSectionData : NSObject

@property (strong,nonatomic) NSMutableArray<KFXCellData*> *cells;
@property (copy,nonatomic) NSString *titleForHeader;
@property (copy,nonatomic) NSString *titleForFooter;
@property (copy,nonatomic) NSString *identifier;
@property (nonatomic) NSInteger tag;
@property (weak,nonatomic) KFXCellularViewData *cellularViewData;


+(instancetype)sectionData;

-(void)addCellData:(KFXCellData*)cellData;
-(void)addCellDataFromArray:(NSArray<KFXCellData*>*)cellData;
-(void)insertCellData:(KFXCellData*)cellData atIndex:(NSInteger)index;

-(KFXCellData*)cellForTag:(NSInteger)tag;
-(KFXCellData*)cellForIdentifier:(NSString*)identifier;

-(NSInteger)count;
-(NSInteger)sectionIndex;

@end
