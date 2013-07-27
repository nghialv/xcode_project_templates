//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___VARIABLE_classPrefix:identifier___ViewController.h"

@interface ___VARIABLE_classPrefix:identifier___ViewController ()

@end

@implementation ___VARIABLE_classPrefix:identifier___ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *) errorView
{
    return nil;
}

- (UIView *) loadingView
{
    return nil;
}

- (void)showLoadingAnimated:(BOOL)animated
{
    UIView *loadingView = [self loadingView];
    loadingView.alpha = 0.0f;
    [self.view addSubview:loadingView];
    [self.view bringSubviewToFront:loadingView];

    double duration = animated ? 0.4f : 0.0f;
    [UIView animateWithDuration:duration animations:^{
        loadingView.alpha = 1.0f;
    }];
}

- (void)hideLoadingAnimated:(BOOL)animated
{
    UIView *loadingView = [self loadingView];

    double duration = animated ? 0.4f : 0.0f;
    [UIView animateWithDuration:duration animations:^{
        loadingView.alpha = 0.0f;
    }completion:^(BOOL finished) {
        [loadingView removeFromSuperview];
    }];
}

- (void)showErrorViewAnimated:(BOOL)animated
{
    UIView *errorView = [self errorView];
    errorView.alpha = 0.0f;
    [self.view addSubview:errorView];
    [self.view bringSubviewToFront:errorView];

    double duration = animated ? 0.4f : 0.0f;
    [UIView animateWithDuration:duration animations:^{
        errorView.alpha = 1.0f;
    }];
}

- (void)hideErrorViewAnimated:(BOOL)animated
{
    UIView *errorView = [self errorView];

    double duration = animated ? 0.4f : 0.0f;
    [UIView animateWithDuration:duration animations:^{
        errorView.alpha = 0.0f;
    }completion:^(BOOL finished) {
        [errorView removeFromSuperview];
    }];
}

- (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message andDelegate:(id)delegate
{
    // alert view
    self.alertView = [[FUIAlertView alloc] initWithTitle:title
                                                 message:message
                                                delegate:delegate
                                       cancelButtonTitle:@"OK"
                                       otherButtonTitles:nil, nil];
    self.alertView.titleLabel.textColor = [UIColor cloudsColor];
    self.alertView.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    self.alertView.messageLabel.textColor = [UIColor cloudsColor];
    self.alertView.messageLabel.font = [UIFont flatFontOfSize:14];
    self.alertView.backgroundOverlay.backgroundColor = [[UIColor cloudsColor] colorWithAlphaComponent:0.8];
    self.alertView.alertContainer.backgroundColor = [UIColor midnightBlueColor];
    self.alertView.defaultButtonColor = [UIColor cloudsColor];
    self.alertView.defaultButtonShadowColor = [UIColor asbestosColor];
    self.alertView.defaultButtonFont = [UIFont boldFlatFontOfSize:16];
    self.alertView.defaultButtonTitleColor = [UIColor asbestosColor];
    [self.alertView show];
}

@end
