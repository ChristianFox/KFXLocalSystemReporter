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
#import "KFXTableViewSectionData.h"


@interface KFXTableViewData : KFXCellularViewData

//@property (strong,nonatomic) NSMutableArray<KFXTableViewSectionData*> *sections;

+(instancetype)tableViewData;

-(KFXTableViewSectionData*)sectionForTag:(NSInteger)tag;
-(KFXTableViewSectionData*)sectionForIdentifier:(NSString*)identifier;



@end
