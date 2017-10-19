/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXUtilities
 *
 ************************************/

#import "KFXCellularViewData.h"
#import "KFXCollectionViewSectionData.h"


@interface KFXCollectionViewData : KFXCellularViewData

//@property (strong,nonatomic) NSMutableArray<KFXCollectionViewSectionData*> *sections;

+(instancetype)collectionViewData;

-(KFXCollectionViewSectionData*)sectionForTag:(NSInteger)tag;
-(KFXCollectionViewSectionData*)sectionForIdentifier:(NSString*)identifier;


@end
