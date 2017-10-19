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

@interface UITouch (KFXAdditions)

/// Returns the centre point of all touches within the given view
+(CGPoint)kfx_centroidOfTouches:(NSSet*)touches
						 inView:(UIView*)view;

@end
