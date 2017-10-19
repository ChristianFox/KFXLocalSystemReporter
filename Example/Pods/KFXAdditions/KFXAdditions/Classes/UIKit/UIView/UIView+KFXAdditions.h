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

@interface UIView (KFXAdditions)


//--------------------------------------------------------
#pragma mark Dimensions Convienence Accessors
//--------------------------------------------------------
@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic,readonly) CGFloat top;
@property (nonatomic,readonly) CGFloat left;
@property (nonatomic,readonly) CGFloat bottom;
@property (nonatomic,readonly) CGFloat right;

-(void)setOrigin:(CGPoint)origin;
-(void)setSize:(CGSize)size;


//--------------------------------------------------------
#pragma mark Init
//--------------------------------------------------------
/// Assumes the nib has the same name as the class. Loads nib with nil owner and options
+(instancetype)kfx_instantiateFromNib;

//--------------------------------------------------------
#pragma mark - First Responder
//--------------------------------------------------------
-(UIView*)kfx_findFirstResponder;


//--------------------------------------------------------
#pragma mark - Border
//--------------------------------------------------------
-(void)kfx_addBorderWithRadius:(CGFloat)radius
						 width:(CGFloat)borderWidth
						colour:(UIColor*)colour;


//--------------------------------------------------------
#pragma mark Animation
//--------------------------------------------------------
-(void)kfx_fadeInWithDuration:(NSTimeInterval)duration
               completion:(void(^)(BOOL))completion;
-(void)kfx_fadeOutWithDuration:(NSTimeInterval)duration
                completion:(void(^)(BOOL))completion;


//--------------------------------------------------------
#pragma mark Images
//--------------------------------------------------------
-(UIImage*)kfx_imageRepresentation;


//--------------------------------------------------------
#pragma mark Hierarchy
//--------------------------------------------------------
/// Find the first superview of the receiver that is a kind of the given class
-(UIView*)kfx_superviewOfClass:(Class)theClass;

/// Find the first superview of the receiver that is a member or kind of the given class. If strict = YES then only member of class is good enough, otherwise member or kind is acceptable.
-(UIView*)kfx_superviewOfClass:(Class)theClass strict:(BOOL)strict;

/// Find the first subview of the receiver that is a kind of the given class
-(UIView*)kfx_subviewOfClass:(Class)theClass;

/// Find the first subview of the receiver that is a member or kind of the given class. If strict = YES then only member of class is good enough, otherwise member or kind is acceptable.
-(UIView*)kfx_subviewOfClass:(Class)theClass strict:(BOOL)strict;

/// Remove the view from the receiver if the view is a subview
-(BOOL)kfx_removeSubview:(UIView*)view;

/// Remove all subviews from the reciever
-(void)kfx_removeAllSubviews;

//--------------------------------------------------------
#pragma mark Background
//--------------------------------------------------------
/// Add gradient layer at index 0
-(void)kfx_setBackgroundGradientWithTopColor:(UIColor *)top
                                 bottomColor:(UIColor *)bottom;

/// Add a shadow to the receiver
-(void)kfx_setShadowWithOffset:(CGSize)offset
                        radius:(CGFloat)radius
                       opacity:(CGFloat)opacity;


@end














