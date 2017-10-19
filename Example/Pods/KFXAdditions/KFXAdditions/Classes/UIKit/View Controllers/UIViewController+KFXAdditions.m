/********************************
 *
 * Copyright © 2016-2017 Christian Fox
 * All Rights Reserved
 * Full licence details can be found in the file 'LICENSE' or in the Pods-{yourProjectName}-acknowledgements.markdown
 *
 * This file is included with KFXAdditions
 *
 ************************************/

#import "UIViewController+KFXAdditions.h"
// Other Categories
#import "UIAlertController+KFXAdditions.h"

@implementation UIViewController (KFXAdditions)


//--------------------------------------------------------
#pragma mark Init
//--------------------------------------------------------
+(instancetype)kfx_instantiateFromNib{
    return [[self alloc]initWithNibName:NSStringFromClass([self class])
                                 bundle:[NSBundle mainBundle]];
}



//--------------------------------------------------------
#pragma mark - Navigation
//--------------------------------------------------------
-(void)kfx_dismissViewController{
    if ([NSThread isMainThread]) {
        [self dismissViewControllerAnimated:YES completion:nil];

    }else{
        dispatch_async(dispatch_get_main_queue(), ^{
            [self dismissViewControllerAnimated:YES completion:nil];

        });
    }
}

-(void)kfx_dismissViewControllerFromPresenting{
    if ([NSThread isMainThread]) {
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

    }else{
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

        });
    }
}

//--------------------------------------------------------
#pragma mark - Presentation
//--------------------------------------------------------
-(BOOL)kfx_hasBeenPresentedModally{
	
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    BOOL isModal = ((self.parentViewController && self.parentViewController.modalViewController == self) ||
                    //or if I have a navigation controller, check if its parent modal view controller is self navigation controller
                    ( self.navigationController && self.navigationController.parentViewController && self.navigationController.parentViewController.modalViewController == self.navigationController) ||
                    //or if the parent of my UITabBarController is also a UITabBarController class, then there is no way to do that, except by using a modal presentation
                    [[[self tabBarController] parentViewController] isKindOfClass:[UITabBarController class]]);
    
    //iOS 5+
    if (!isModal && [self respondsToSelector:@selector(presentingViewController)]) {
        
        isModal = ((self.presentingViewController && self.presentingViewController.modalViewController == self) ||
                   //or if I have a navigation controller, check if its parent modal view controller is self navigation controller
                   (self.navigationController && self.navigationController.presentingViewController && self.navigationController.presentingViewController.modalViewController == self.navigationController) ||
                   //or if the parent of my UITabBarController is also a UITabBarController class, then there is no way to do that, except by using a modal presentation
                   [[[self tabBarController] presentingViewController] isKindOfClass:[UITabBarController class]]);
        
    }
#pragma clang diagnostic pop

    return isModal;
}

//--------------------------------------------------------
#pragma mark Alerts
//--------------------------------------------------------
-(void)kfx_showSimpleAlertWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)buttonTitle{
	
    dispatch_block_t alertBlock = ^{
        NSString *buttonTitle2 = buttonTitle;
        if (buttonTitle2 == nil) {
            buttonTitle2 = NSLocalizedString(@"Okay", @"Okay / agree / accept");
        }
        UIAlertController *alert = [UIAlertController kfx_alertControllerWithTitle:title message:message singleButtonTitle:buttonTitle2];
        [self presentViewController:alert animated:YES completion:nil];
    };
    
    if ([NSThread isMainThread]) {
        alertBlock();
    }else{
        dispatch_async(dispatch_get_main_queue(), ^{
            alertBlock();
        });
    }
}

-(void)kfx_showSimpleAlertWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)buttonTitle buttonCompletion:(void (^)(UIAlertAction *))completionBlock{
	
    dispatch_block_t alertBlock = ^{
        NSString *buttonTitle2 = buttonTitle;
        if (buttonTitle2 == nil) {
            buttonTitle2 = NSLocalizedString(@"Okay", @"Okay / agree / accept");
        }
        UIAlertController *alert = [UIAlertController kfx_alertControllerWithTitle:title message:message singleButtonTitle:buttonTitle2 buttonTappedCompletionBlock:completionBlock];
        [self presentViewController:alert animated:YES completion:nil];
    };
    
    if ([NSThread isMainThread]) {
        alertBlock();
    }else{
        dispatch_async(dispatch_get_main_queue(), ^{
            alertBlock();
        });
    }
}

-(void)kfx_showErrorAlertWithMessage:(NSString *)message{
    
    [self kfx_showSimpleAlertWithTitle:NSLocalizedString(@"Error", @"An error occurred")
                               message:message
                           buttonTitle:nil];
}

-(void)kfx_showErrorAlertWithMessage:(NSString*)message
                okayButtonCompletion:(void(^)(UIAlertAction *action))completionBlock{
    
    [self kfx_showSimpleAlertWithTitle:NSLocalizedString(@"Error", @"An error occurred")
                               message:message
                           buttonTitle:NSLocalizedString(@"Okay", @"Okay / agree / accept")
                      buttonCompletion:completionBlock];
}

-(void)kfx_showSuccessAlertWithMessage:(NSString *)message{
    
    [self kfx_showSimpleAlertWithTitle:NSLocalizedString(@"Success", @"The operation was a success")
                               message:message
                           buttonTitle:nil];
}

-(void)kfx_showSuccessAlertWithMessage:(NSString*)message
                  okayButtonCompletion:(void(^)(UIAlertAction *action))completionBlock{
    
    [self kfx_showSimpleAlertWithTitle:NSLocalizedString(@"Success", @"The operation was a success")
                               message:message
                           buttonTitle:NSLocalizedString(@"Okay", @"Okay / agree / accept")
                      buttonCompletion:completionBlock];
    
}

//--------------------------------------------------------
#pragma mark - Child View Controllers
//--------------------------------------------------------
-(void)kfx_addChildViewController:(UIViewController *)childVC toView:(UIView *)view{
	[childVC willMoveToParentViewController:self];
	[self addChildViewController:childVC];
	childVC.view.frame = view.bounds;
	[view addSubview:childVC.view];
	[childVC didMoveToParentViewController:self];
}

-(void)kfx_addChildViewController:(UIViewController *)childVC toView:(UIView *)view withFrame:(CGRect)frame{
	[childVC willMoveToParentViewController:self];
	[self addChildViewController:childVC];
	childVC.view.frame = frame;
	[view addSubview:childVC.view];
	[childVC didMoveToParentViewController:self];
}

-(void)kfx_removeChildViewController:(UIViewController *)childVC{
	if ([childVC respondsToSelector:@selector(setDelegate:)]) {
		[childVC performSelector:@selector(setDelegate:) withObject:nil];
	}
	[childVC willMoveToParentViewController:nil];
	[childVC.view removeFromSuperview];
	[childVC removeFromParentViewController];
}


-(NSArray *)kfx_findChildViewControllersOfClass:(Class)childClass{
	NSMutableArray *mutArray = [[NSMutableArray alloc]initWithCapacity:2];
	for (UIViewController *childVC in self.childViewControllers) {
		if ([childVC isKindOfClass:childClass]) {
			[mutArray addObject:childVC];
		}
	}
	return [mutArray copy];
}


@end
