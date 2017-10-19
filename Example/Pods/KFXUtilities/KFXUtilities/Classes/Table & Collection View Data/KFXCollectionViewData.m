/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXUtilities
 *
 ************************************/

#import "KFXCollectionViewData.h"

@implementation KFXCollectionViewData


@dynamic sections;

//======================================================
#pragma mark - ** Public Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Initilisers
//--------------------------------------------------------

+(instancetype)collectionViewData{
	return [self cellularViewData];
}

//--------------------------------------------------------
#pragma mark - Inject Dependencies
//--------------------------------------------------------


//======================================================
#pragma mark - ** Primary Public Functionality **
//======================================================


//======================================================
#pragma mark - ** Inherited Methods **
//======================================================
-(KFXCollectionViewSectionData*)sectionForTag:(NSInteger)tag{
	return [super sectionForTag:tag];
}

-(KFXCollectionViewSectionData*)sectionForIdentifier:(NSString*)identifier{
	return [super sectionForIdentifier:identifier];
}




//======================================================
#pragma mark - ** Protocol Methods **
//======================================================




//======================================================
#pragma mark - ** Private Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Lazy Load
//--------------------------------------------------------



@end



