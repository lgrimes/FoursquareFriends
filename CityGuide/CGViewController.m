//
//  CGViewController.m
//  CityGuide
//
//  Created by Jesse Collis on 12/07/13.
//  Copyright (c) 2013 RMIT. All rights reserved.
//

#import "CGViewController.h"
#import "CGAppDelegate.h"
#import "CGCity.h"
#import "CGCityController.h"

@interface CGViewController ()

@end

@implementation CGViewController    

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"City Guide";

    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    //NOTE: JC - use self.cities because we have a property not an iVar like the book
    //           if you try and just use 'cities' the compiler will complain.
    self.cities = delegate.cities;
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
    CGCity *thisCity = self.cities[indexPath.row];
    cell.textLabel.text = thisCity.cityName;

    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.cities count];
}

#pragma mark UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    CGCityController *cityController = [[CGCityController alloc] initWithIndexPath:indexPath];
    [delegate.navController pushViewController:cityController animated:YES];
 
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
