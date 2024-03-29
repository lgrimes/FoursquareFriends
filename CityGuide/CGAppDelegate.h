//
//  CGAppDelegate.h
//  CityGuide
//
//  Created by Jesse Collis on 12/07/13.
//  Copyright (c) 2013 RMIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CGViewController;

@interface CGAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CGViewController *viewController;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) NSMutableArray *cities;

@end
