/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXUtilities
 *
 ************************************/


#import "KFXSectionData.h"
#import "KFXCellData.h"
#import "KFXCellularViewData.h"

@interface KFXSectionData ()


@end

@implementation KFXSectionData


//======================================================
#pragma mark - ** Public Methods **
//======================================================
//--------------------------------------------------------
#pragma mark - Initilisers
//--------------------------------------------------------
- (instancetype)init
{
	self = [super init];
	if (self) {
		self.cells = [NSMutableArray arrayWithCapacity:5];

	}
	return self;
}

+(instancetype)sectionData{
	return [[self alloc]init];
}



//--------------------------------------------------------
#pragma mark - Inject Dependencies
//--------------------------------------------------------


//======================================================
#pragma mark - ** Primary Public Functionality **
//======================================================
-(void)addCellData:(KFXCellData *)cellData{
	[self.cells addObject:cellData];
	cellData.sectionData = self;
	
}

-(void)addCellDataFromArray:(NSArray<KFXCellData *> *)cellData{
	[self.cells addObjectsFromArray:cellData];
	for (KFXCellData *aCell in cellData) {
		aCell.sectionData = self;
	}
}

-(void)insertCellData:(KFXCellData *)cellData atIndex:(NSInteger)index{
	
	[self.cells insertObject:cellData atIndex:index];
	cellData.sectionData = self;
}

-(KFXCellData *)cellForTag:(NSInteger)tag{
	
	NSPredicate *pred = [NSPredicate predicateWithFormat:@"tag = %ld",(long)tag];
	NSArray *matching = [self.cells filteredArrayUsingPredicate:pred];
	return matching.firstObject;
}

-(KFXCellData *)cellForIdentifier:(NSString *)identifier{
	
	NSPredicate *pred = [NSPredicate predicateWithFormat:@"identifier = %@",identifier];
	NSArray *matching = [self.cells filteredArrayUsingPredicate:pred];
	return matching.firstObject;
}

-(NSInteger)count{
	return self.cells.count;
}

-(NSInteger)sectionIndex{
	return [self.cellularViewData.sections indexOfObject:self];
}

//======================================================
#pragma mark - ** Inherited Methods **
//======================================================




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










































