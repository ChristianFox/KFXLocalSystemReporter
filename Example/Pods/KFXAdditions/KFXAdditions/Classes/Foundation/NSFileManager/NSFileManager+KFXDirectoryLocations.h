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

@interface NSFileManager (KFXDirectoryLocations)

-(NSString*)kfx_Documents;
-(NSString*)kfx_Documents_Inbox;
-(NSString*)kfx_Documents_Archives;
-(NSString*)kfx_Library;
-(NSString*)kfx_Library_ApplicationSupport;
-(NSString*)kfx_Library_ApplicationSupport_ManagedApplicationData;
-(NSString*)kfx_Library_ApplicationSupport_ManagedApplicationData_Plists;
-(NSString*)kfx_Library_Caches;
-(NSString*)kfx_Library_LogFiles;
-(NSString*)kfx_tmp;

//  NSFileManager+DirectoryLocations.h
//
//  Created by Matt Gallagher on 06 May 2010
//
//  This software is provided 'as-is', without any express or implied
//  warranty. In no event will the authors be held liable for any damages
//  arising from the use of this software. Permission is granted to anyone to
//  use this software for any purpose, including commercial applications, and to
//  alter it and redistribute it freely, subject to the following restrictions:
//
//  1. The origin of this software must not be misrepresented; you must not
//     claim that you wrote the original software. If you use this software
//     in a product, an acknowledgment in the product documentation would be
//     appreciated but is not required.
//  2. Altered source versions must be plainly marked as such, and must not be
//     misrepresented as being the original software.
//  3. This notice may not be removed or altered from any source
//     distribution.
//

#pragma mark - renamed with kfx prefix for consistency
- (NSString *)kfx_findOrCreateDirectory:(NSSearchPathDirectory)searchPathDirectory
                           inDomain:(NSSearchPathDomainMask)domainMask
                appendPathComponent:(NSString *)appendComponent
                              error:(NSError **)errorOut;

@end
