/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/


#import "UICollectionViewCell+KFXAdditions.h"
#import "UIView+KFXAdditions.h"

@implementation UICollectionViewCell (KFXAdditions)

-(UICollectionView *)kfx_collectionView{
    return (UICollectionView*)[self kfx_superviewOfClass:[UICollectionView class]];
}

-(NSIndexPath *)kfx_indexPath{
    return [[self kfx_collectionView] indexPathForCell:self];
}

@end
