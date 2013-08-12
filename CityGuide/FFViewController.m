//
//  CGViewController.m
//  CityGuide
//
//  Created by Jesse Collis on 12/07/13.
//  Copyright (c) 2013 RMIT. All rights reserved.
//

#import "FFViewController.h"
#import "FFAppDelegate.h"
#import "FFFriend.h"
#import "FFFriendController.h"

@interface FFViewController ()

@end

@implementation FFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Foursquare Friends";

    FFAppDelegate *delegate = (FFAppDelegate *)[[UIApplication sharedApplication] delegate];
    //NOTE: JC - use self.cities because we have a property not an iVar like the book
    //           if you try and just use 'cities' the compiler will complain.
    self.cities = delegate.friends;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource Methods

// NOTE: JC - I'ts not necessary to name the tableView variable 'tv'

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NOTE: JC - It's best to use a constant here, rather than use the string literal twice
    NSString * const CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    if (nil == cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

    //CGCity *selectedCity = [self.cities objectAtIndex:indexPath.row];

    //NOTE: JC - it's also possible to use the newer subscripting
    FFFriend *thisCity = self.cities[indexPath.row];
    cell.textLabel.text = thisCity.friendName;

    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.cities count];
}

#pragma mark UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FFAppDelegate *delegate = (FFAppDelegate *)[[UIApplication sharedApplication] delegate];
    FFFriendController *cityController = [[FFFriendController alloc] initWithIndexPath:indexPath];
    [delegate.navController pushViewController:cityController animated:YES];
 
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
