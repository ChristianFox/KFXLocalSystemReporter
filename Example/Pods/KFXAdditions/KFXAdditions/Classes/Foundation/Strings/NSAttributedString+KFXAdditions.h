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

@interface NSAttributedString (KFXAdditions)

//--------------------------------------------------------
#pragma mark - Convience Initilisers
//--------------------------------------------------------
+(instancetype)kfx_instanceWithString:(NSString*)string;
+(instancetype)kfx_instanceWithString:(NSString*)string attributes:(NSDictionary*)attributes;
+(instancetype)kfx_instanceWithFormat:(NSString*)format,...;
+(instancetype)kfx_instanceWithAttributes:(NSDictionary*)attributes format:(NSString*)format,...;

//--------------------------------------------------------
#pragma mark - Ranges
//--------------------------------------------------------
-(NSRange)kfx_rangeOfString;

@end
