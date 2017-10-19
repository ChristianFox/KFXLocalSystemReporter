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

@interface UIViewController (KFXAdditions)


//--------------------------------------------------------
#pragma mark Init
//--------------------------------------------------------
/// Assumes the nib has the same name as the class. Loads nib with nil owner and options
+(instancetype)kfx_instantiateFromNib;


//--------------------------------------------------------
#pragma mark - Navigation
//--------------------------------------------------------
/**
 * @brief Simply calls dismissViewControllerAnimated:completion: with YES and nil. Main purpose is  to simplify dismissing a view controller when setting a target action on a button.
 * @since 0.22.0
 **/
-(void)kfx_dismissViewController;
/**
 * @brief Simply calls dismissViewControllerAnimated:completion: with YES and nil. Main purpose is  to simplify dismissing self when setting a target action on a button.
 * @since 0.22.0
 **/
-(void)kfx_dismissViewControllerFromPresenting;

//--------------------------------------------------------
#pragma mark - Presentation
//--------------------------------------------------------
-(BOOL)kfx_hasBeenPresentedModally;

//--------------------------------------------------------
#pragma mark Alerts
//--------------------------------------------------------
/**
 * @brief Present a UIAlertController with a single button, if no button title is provided then a localised string 'Okay' will be used. Nil is passed as the UIAlertAction handler.
 * @since 0.22.0
 **/
-(void)kfx_showSimpleAlertWithTitle:(NSString*)title
							message:(NSString*)message
						buttonTitle:(NSString*)buttonTitle;


/**
 * @brief Present a UIAlertController with a single button, if no button title is provided then a localised string 'Okay' will be used.
 * @param completionBlock A block to be called when the button is tapped
 * @since 0.22.0
 **/
-(void)kfx_showSimpleAlertWithTitle:(NSString*)title
                            message:(NSString*)message
                        buttonTitle:(NSString*)buttonTitle
                   buttonCompletion:(void(^)(UIAlertAction *action))completionBlock;
/**
 * @brief Present a UIAlertController with a single button and the title is a localised string 'Error', if no button title is provided then a localised string 'Okay' will be used. Nil is passed as the UIAlertAction handler.
 * @since 0.22.0
 **/
-(void)kfx_showErrorAlertWithMessage:(NSString*)message;

/**
 * @brief Present a UIAlertController with a single button and the title is a localised string 'Error', if no button title is provided then a localised string 'Okay' will be used. Nil is passed as the UIAlertAction handler.
 * @param completionBlock A block to be called when the button is tapped
 * @since 0.23.0
 **/
-(void)kfx_showErrorAlertWithMessage:(NSString*)message
                okayButtonCompletion:(void(^)(UIAlertAction *action))completionBlock;

/**
 * @brief Present a UIAlertController with a single button and the title is a localised string 'Success', if no button title is provided then a localised string 'Okay' will be used. Nil is passed as the UIAlertAction handler.
 * @since 0.22.0
 **/
-(void)kfx_showSuccessAlertWithMessage:(NSString*)message;

/**
 * @brief Present a UIAlertController with a single button and the title is a localised string 'Success', if no button title is provided then a localised string 'Okay' will be used. Nil is passed as the UIAlertAction handler.
 * @param completionBlock A block to be called when the button is tapped
 * @since 0.23.0
 **/
-(void)kfx_showSuccessAlertWithMessage:(NSString*)message
                  okayButtonCompletion:(void(^)(UIAlertAction *action))completionBlock;


//--------------------------------------------------------
#pragma mark - Child View Controllers
//--------------------------------------------------------
/*!
 * @brief Adds a child ViewController to receiver.
 * @description Adds a child ViewController to self.childViewControllers, adds the view of the child to the view passed and calls -didMoveToParentViewController.
 * @param childVC The UIViewController to add as a childViewController
 * @param view The UIView to add the child's view to. Typically self.view
 */
-(void)kfx_addChildViewController:(UIViewController*)childVC toView:(UIView*)view;

/*!
 * @brief Adds a child ViewController to receiver.
 * @description Adds a child ViewController to self.childViewControllers, adds the view of the child to the view passed and calls -didMoveToParentViewController.
 * @param childVC The UIViewController to add as a childViewController
 * @param view The UIView to add the child's view to. Typically self.view
 * @param frame The frame to set the childVC to
 */
-(void)kfx_addChildViewController:(UIViewController*)childVC toView:(UIView*)view withFrame:(CGRect)frame;

/*!
 *  @brief Removes the childViewController from the parent(self) and its view.
 
 *  @description Checks for a delegate property and sets it to nil if necessary.
 
 *  Calls -willMoveToParentViewController and -removeFromParentViewController.
 * @discussion You will need to set a strong reference to nil manually
 * @param childVC The UIViewController you want removed
 */
-(void)kfx_removeChildViewController:(UIViewController*)childVC;

/*!
 * @brief Enumerates through self.childViewControllers and finds all instances of the specified class.
 * @param childClass The Class of UIViewController you are looking for
 * @return An NSArray containing UIViewControllers, may be empty but not NULL
 */
-(NSArray*)kfx_findChildViewControllersOfClass:(Class)childClass;

@end
