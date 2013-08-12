//
//  CGAppDelegate.m
//  CityGuide
//
//  Created by Jesse Collis on 12/07/13.
//  Copyright (c) 2013 RMIT. All rights reserved.
//

#import "CGAppDelegate.h"

#import "CGViewController.h"
#import "CGCity.h"

@implementation CGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    //NOTE: JC - using CGCity instead of City becuase that's what we named it instead
    CGCity *london = [[CGCity alloc] init];
    london.cityName = @"London";
    london.cityDescription = @"The capital of the United Kingdom.";
    london.cityPicture = @"london.jpg";

    CGCity *sanFrancisco = [[CGCity alloc] init];
    sanFrancisco.cityName = @"San Francisco";
    sanFrancisco.cityDescription = @"The heart of the San Francisco Bay Area.";
    sanFrancisco.cityPicture = @"sanfrancisco.jpg";

    CGCity *sydney = [[CGCity alloc] init];
    sydney.cityName = @"Sydney";
    sydney.cityDescription = @"The largest city in Australia.";
    sydney.cityPicture = @"sydney.jpg";

    CGCity *madrid = [[CGCity alloc] init];
    madrid.cityName = @"Madrid";
    madrid.cityDescription = @"The capital and largest city of Spain.";
    madrid.cityPicture = @"madrid.jpg";

    self.cities = [[NSMutableArray alloc] initWithObjects:london, sanFrancisco, sydney, madrid, nil];

    self.viewController = [[CGViewController alloc] initWithNibName:@"CGViewController" bundle:nil];
    self.navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];

    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
