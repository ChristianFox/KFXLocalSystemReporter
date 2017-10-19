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
@import UIKit.UITableView;

@implementation KFXCellularViewData


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
		self.sections = [NSMutableArray arrayWithCapacity:5];
	}
	return self;
}

+(instancetype)cellularViewData{
	return [[self alloc]init];
}

//--------------------------------------------------------
#pragma mark - Inject Dependencies
//--------------------------------------------------------


//======================================================
#pragma mark - ** Primary Public Functionality **
//======================================================
-(void)addSection:(KFXSectionData *)section{
	[self.sections addObject:section];
	section.cellularViewData = self;
}

-(void)addSectionsFromArray:(NSArray<KFXSectionData *> *)sections{
	[self.sections addObjectsFromArray:sections];
	for (KFXSectionData *section in sections) {
		section.cellularViewData = self;
	}
}

-(void)insertSection:(KFXSectionData *)section atIndex:(NSInteger)index{

	[self.sections insertObject:section atIndex:index];
	section.cellularViewData = self;
}

-(void)addCell:(KFXCellData *)cell toSectionAtIndex:(NSInteger)sectionIndex{
	KFXSectionData *section = self.sections[sectionIndex];
	[section addCellData:cell];
}

-(void)insertCell:(KFXCellData *)cell atIndexPath:(NSIndexPath *)indexPath{
	KFXSectionData *section = self.sections[indexPath.section];
	[section insertCellData:cell atIndex:indexPath.row];
}

-(void)deleteCellAtIndexPath:(NSIndexPath *)indexPath{
	KFXSectionData *section = self.sections[indexPath.section];
	[section.cells removeObjectAtIndex:indexPath.row];
	
}

-(KFXSectionData*)sectionForTag:(NSInteger)tag{
	NSPredicate *pred = [NSPredicate predicateWithFormat:@"tag = %ld",(long)tag];
	NSArray *matching = [self.sections filteredArrayUsingPredicate:pred];
	return matching.firstObject;
}

-(KFXSectionData*)sectionForIdentifier:(NSString*)identifier{
	NSPredicate *pred = [NSPredicate predicateWithFormat:@"identifier = %@",identifier];
	NSArray *matching = [self.sections filteredArrayUsingPredicate:pred];
	return matching.firstObject;
}

-(KFXCellData *)cellForTag:(NSInteger)tag{
	
	KFXCellData *cell;
	for (KFXSectionData *section in self.sections) {
		
		if ((cell = [section cellForTag:tag])) {
			break;
		}
	}
	return cell;
}

-(KFXCellData *)cellForIdentifier:(NSString *)identifier{
	
	KFXCellData *cell;
	for (KFXSectionData *section in self.sections) {
		
		if ((cell = [section cellForIdentifier:identifier])) {
			break;
		}
	}
	return cell;
}

-(KFXCellData *)cellForIndexPath:(NSIndexPath *)indexPath{
	KFXSectionData *section = self.sections[indexPath.section];
	KFXCellData *cell;
	if (indexPath.row < section.cells.count) {
		cell = section.cells[indexPath.row];
	}
	
	return cell;
}
-(NSInteger)count{
	return self.sections.count;
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







