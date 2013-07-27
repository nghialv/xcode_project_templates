//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___VARIABLE_classPrefix:identifier___DB5.h"

@implementation ___VARIABLE_classPrefix:identifier___DB5

+ (___VARIABLE_classPrefix:identifier___DB5 *)sharedInstance
{
    __strong static ___VARIABLE_classPrefix:identifier___DB5 *sharedDB5 = nil;
    static dispatch_once_t onceQueue = 0;
    dispatch_once(&onceQueue, ^{
        sharedDB5 = [[___VARIABLE_classPrefix:identifier___DB5 alloc] init];
        sharedDB5.themeLoader = [VSThemeLoader new];
        sharedDB5.theme = sharedDB5.themeLoader.defaultTheme;
    });

    return sharedDB5;
}

+ (VSTheme *)theme
{
    return [[self sharedInstance] theme];
}

@end
