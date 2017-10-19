/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/


#import "UITableViewCell+KFXAdditions.h"
#import "UIView+KFXAdditions.h"

@implementation UITableViewCell (KFXAdditions)


/** The tableView (superview) the cell is displayed in */
-(UITableView*)kfx_tableView{
    return (UITableView*)[self kfx_superviewOfClass:[UITableView class]];
}

/** The indexPath of the cell in the tableView the cell is displayed in */
-(NSIndexPath*)kfx_indexPath{
    return [[self kfx_tableView] indexPathForCell:self];
}

@end
