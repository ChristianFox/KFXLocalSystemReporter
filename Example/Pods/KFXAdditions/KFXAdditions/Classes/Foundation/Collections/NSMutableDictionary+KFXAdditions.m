/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/


#import "NSMutableDictionary+KFXAdditions.h"

@implementation NSMutableDictionary (KFXAdditions)


-(BOOL)kfx_setObject:(id __nullable)object forKey:(id<NSCopying> __nullable)key{
    
    if (object != nil && key != nil) {
        [self setObject:object forKey:key];
        return YES;
    }
    return NO;
}

@end
