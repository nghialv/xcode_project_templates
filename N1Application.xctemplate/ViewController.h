//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FUIAlertView.h>
#import <FlatUIKit/UIColor+FlatUI.h>
#import <FlatUIKit/UIFont+FlatUI.h>
#import "___VARIABLE_classPrefix:identifier___DB5.h"

@interface ___VARIABLE_classPrefix:identifier___ViewController : UIViewController

@property (strong, nonatomic) FUIAlertView *alertView;

- (UIView *) errorView;
- (UIView *) loadingView;
- (void) showLoadingAnimated:(BOOL) animated;
- (void) hideLoadingAnimated:(BOOL) animated;
- (void) showErrorViewAnimated:(BOOL) animated;
- (void) hideErrorViewAnimated:(BOOL) animated;
- (void) showAlertWithTitle:(NSString *)title andMessage:(NSString *)message andDelegate:(id)delegate;

@end
