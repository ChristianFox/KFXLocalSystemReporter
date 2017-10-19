/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXUtilities
 *
 ************************************/

#import "KFXTableViewData.h"

@implementation KFXTableViewData

@dynamic sections;

//======================================================
#pragma mark - ** Public Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Initilisers
//--------------------------------------------------------

+(instancetype)tableViewData{
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
-(KFXTableViewSectionData*)sectionForTag:(NSInteger)tag{
	return [super sectionForTag:tag];

}

-(KFXTableViewSectionData*)sectionForIdentifier:(NSString*)identifier{
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











