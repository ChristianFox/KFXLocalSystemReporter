/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXLocalSystemReporter
 *
 ************************************/

/********************************
// -kfx_ipAddress from http://foundationk.it
// May contains stuff from Sam Soffes' Custom-Licensed SSToolkit: http://github.com/samsoffes/sstoolkit
 ************************************/



#import <Foundation/Foundation.h>

@interface KFXSystemReporter : NSObject


/// Retrieve the device's IP address - only works on WiFi
+(NSString *)kfx_ipAddress;

@end
