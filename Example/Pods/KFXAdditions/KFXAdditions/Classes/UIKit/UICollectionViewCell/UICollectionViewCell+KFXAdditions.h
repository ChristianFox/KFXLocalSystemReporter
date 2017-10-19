/********************************
*
* Copyright © 2016-2017 Christian Fox
* All Rights Reserved
* Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
*
* This file is included with KFXAdditions
*
************************************/

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (KFXAdditions)

/** The collectionView (superview) the cell is displayed in */
-(UICollectionView*)kfx_collectionView;

/** The indexPath of the cell in the collectionView the cell is displayed in */
-(NSIndexPath*)kfx_indexPath;

@end
