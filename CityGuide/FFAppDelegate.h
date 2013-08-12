//
//  CGAppDelegate.h
//  CityGuide
//
//  Created by Jesse Collis on 12/07/13.
//  Copyright (c) 2013 RMIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FFViewController;

@interface FFAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FFViewController *viewController;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) NSMutableArray *friends;

@end
