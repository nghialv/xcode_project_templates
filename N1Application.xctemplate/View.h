//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FUIButton.h>
#import <FlatUIKit/UIColor+FlatUI.h>
#import <FlatUIKit/UIFont+FlatUI.h>
#import "___VARIABLE_classPrefix:identifier___DB5.h"

@protocol ___VARIABLE_classPrefix:identifier___ViewDelegate <NSObject>

@end

@interface ___VARIABLE_classPrefix:identifier___View : UIView

@property (weak, nonatomic) id delegate;

- (id)initWithFrame:(CGRect)frame andDelegate:(id) delegate;
- (void)initView;
- (void)updateContent;

@end
