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

@interface UITableViewCell (KFXAdditions)

/** The tableView (superview) the cell is displayed in */
-(UITableView*)kfx_tableView;

/** The indexPath of the cell in the tableView the cell is displayed in */
-(NSIndexPath*)kfx_indexPath;


@end
