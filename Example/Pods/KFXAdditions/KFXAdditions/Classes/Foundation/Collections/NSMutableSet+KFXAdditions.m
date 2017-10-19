/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/


#import "NSMutableSet+KFXAdditions.h"

@implementation NSMutableSet (KFXAdditions)


-(BOOL)kfx_addObject:(id)object{
    
    if (object != nil) {
        [self addObject:object];
        return YES;
    }
    return NO;
}


@end
