//
//  RZNavBarStyle.m
//  RZUtils
//
//  Created by Nicholas Bonatsakis on 11/9/15.
//  Copyright © 2016 Raizlabs Inc. All rights reserved.
//

// Copyright 2016 Raizlabs and other contributors
// http://raizlabs.com/
//
// Permission is hereby granted, free of charge, to any person obtaining
// a copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to
// the following conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
// LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
// OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
// WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "RZNavBarStyle.h"

@interface RZNavBarStyle ()

@property (copy, nonatomic) UIColor *appNavBarTintColor;
@property (assign, nonatomic) UIBarStyle appNavBarStyle;
@property (copy, nonatomic) UIColor *appNavTintColor;
@property (copy, nonatomic) NSDictionary *appNavTitleTextAttributes;
@property (copy, nonatomic) UIImage *backgroundImage;
@property (copy, nonatomic) UIImage *shadowImage;

@end

@implementation RZNavBarStyle

+ (void)clearAppearanceState
{
    [UINavigationBar appearance].barTintColor = nil;
    [UINavigationBar appearance].barStyle = UIBarStyleDefault;
    [UINavigationBar appearance].tintColor = nil;
    [UINavigationBar appearance].titleTextAttributes = nil;
    [[UINavigationBar appearance] setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [UINavigationBar appearance].shadowImage = nil;
}

+ (instancetype)saveAppearanceState
{
    RZNavBarStyle *style = [[RZNavBarStyle alloc] init];

    style.appNavBarTintColor = [UINavigationBar appearance].barTintColor;
    style.appNavBarStyle = [UINavigationBar appearance].barStyle;
    style.appNavTintColor = [UINavigationBar appearance].tintColor;
    style.appNavTitleTextAttributes = [UINavigationBar appearance].titleTextAttributes;
    style.backgroundImage = [[UINavigationBar appearance] backgroundImageForBarMetrics:UIBarMetricsDefault];
    style.shadowImage = [UINavigationBar appearance].shadowImage;

    return style;
}

- (void)restoreAppearanceState
{
    [UINavigationBar appearance].barTintColor = self.appNavBarTintColor;
    [UINavigationBar appearance].barStyle = self.appNavBarStyle;
    [UINavigationBar appearance].tintColor = self.appNavTintColor;
    [UINavigationBar appearance].titleTextAttributes = self.appNavTitleTextAttributes;
    [[UINavigationBar appearance] setBackgroundImage:self.backgroundImage forBarMetrics:UIBarMetricsDefault];
    [UINavigationBar appearance].shadowImage = self.shadowImage;
}


@end
