/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/

#import "NSIndexPath+KFXAdditions.h"
@import UIKit.UITableView;
@import UIKit.UICollectionView;

@implementation NSIndexPath (KFXAdditions)

+(NSArray *)kfx_indexPathsFromRow:(NSInteger)startRow
							toRow:(NSInteger)endRow
						inSection:(NSInteger)section{
	
	NSAssert(endRow >= startRow,
			 @"endRow must be greater or equal than startRow");
	
	NSMutableArray *indexPaths = [NSMutableArray arrayWithCapacity:(NSUInteger)(endRow-startRow+1)];
	
	for (NSInteger row = startRow; row <= endRow; row++) {

		[indexPaths addObject:[NSIndexPath indexPathForRow:row inSection:section]];
	}
	
	return [indexPaths copy];
}

+(NSArray<NSIndexPath *> *)kfx_indexPathsFromItem:(NSInteger)startItem
										   toItem:(NSInteger)endItem
										inSection:(NSInteger)section{
	
	NSAssert(endItem >= startItem,
			 @"endItem must be greater or equal than startItem");
	
	NSMutableArray *indexPaths = [NSMutableArray arrayWithCapacity:(NSUInteger)(endItem-startItem+1)];
	
	for (NSInteger item = startItem; item <= endItem; item++) {
		
		[indexPaths addObject:[NSIndexPath indexPathForItem:item inSection:section]];
	}
	
	return [indexPaths copy];
}


@end
