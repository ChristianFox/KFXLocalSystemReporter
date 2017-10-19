/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/


#import <Foundation/Foundation.h>

@interface NSObject (KFXAdditions)



//--------------------------------------------------------
#pragma mark Class Name
//--------------------------------------------------------
+(NSString*)kfx_className;
-(NSString*)kfx_className;




#pragma mark - Properties of a class (introspection?)
+ (NSDictionary *)kfx_propertiesOfClass:(Class)klass;



#pragma mark - Blocks 
//-(void)kfx_waitUntilDone:(void(^)(void))waitBlock;

/**
 * @ref http://www.brianjcoleman.com/tutorial-run-a-block-of-code-after-a-delay/
 **/
-(void)kfx_performBlock: (dispatch_block_t) block
           afterDelay: (NSTimeInterval) delay;


//--------------------------------------------------------
#pragma mark Copy
//--------------------------------------------------------
/*
 * Returns a deep copy of the object by first archiving using NSKeyedArchiver and then unarchiving using NSKeyedUnarchiver
 * @warning This class and all its components must implement NSCoding.
 */
-(id<NSCoding>)kfx_deepCopy;

@end
