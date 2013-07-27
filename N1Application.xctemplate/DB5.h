//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <VSTheme.h>
#import <VSThemeLoader.h>

@interface ___VARIABLE_classPrefix:identifier___DB5 : NSObject

@property (strong, nonatomic) VSThemeLoader *themeLoader;
@property (strong, nonatomic) VSTheme *theme;

+ (___VARIABLE_classPrefix:identifier___DB5 *)sharedInstance;
+ (VSTheme *)theme;

@end
