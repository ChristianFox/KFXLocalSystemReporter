/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/

#import "NSAttributedString+KFXAdditions.h"

@implementation NSAttributedString (KFXAdditions)

//--------------------------------------------------------
#pragma mark - Convience Initilisers
//--------------------------------------------------------
+(instancetype)kfx_instanceWithString:(NSString*)string{
    
    NSAttributedString *attString = [[NSAttributedString alloc]initWithString:string];
    return attString;
}

+(instancetype)kfx_instanceWithString:(NSString*)string attributes:(NSDictionary*)attributes{

    NSAttributedString *attString = [[NSAttributedString alloc]initWithString:string attributes:attributes];
    return attString;
}

+(instancetype)kfx_instanceWithFormat:(NSString*)format,...{
    
    NSString *string;
    if (format != nil) {
        va_list args;
        va_start(args, format);
        string = [[NSString alloc]initWithFormat:format arguments:args];
        va_end(args);
    }
    return [self kfx_instanceWithString:string];
}

+(instancetype)kfx_instanceWithAttributes:(NSDictionary*)attributes format:(NSString*)format,...{
    
    NSString *string;
    if (format != nil) {
        va_list args;
        va_start(args, format);
        string = [[NSString alloc]initWithFormat:format arguments:args];
        va_end(args);
    }
    return [self kfx_instanceWithString:string attributes:attributes];

}

//--------------------------------------------------------
#pragma mark - Ranges
//--------------------------------------------------------
-(NSRange)kfx_rangeOfString{
	return NSMakeRange(0, self.string.length);
}

@end
