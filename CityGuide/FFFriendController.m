//
//  CGCityController.m
//  CityGuide
//
//  Created by Jesse Collis on 30/07/13.
//  Copyright (c) 2013 RMIT. All rights reserved.
//

#import "FFFriendController.h"
#import "FFAppDelegate.h"
#import "FFFriend.h"

@interface FFFriendController ()

@end

@implementation FFFriendController

- (id)initWithIndexPath:(NSIndexPath *)indexPath
{
    if (self = [super init])
    {
        self.indexPath = indexPath;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    FFAppDelegate *delegate = (FFAppDelegate *)[[UIApplication sharedApplication] delegate];

    //Array subscripting!
    FFFriend *thisFriend = delegate.friends[self.indexPath.row];
    self.title = thisFriend.friendName;
    
    //link up all associated names etc for variables
    descriptionView.text= thisFriend.friendStatus;
    descriptionLabel.text = thisFriend.friendName;
    pictureView.image = [UIImage imageNamed:thisFriend.friendLocationPicture];
    pictureView.opaque = YES;
    //messageLabel.text = @"Message:";
    //messageView.editable = YES;
    //messageView.text=nil;
    //messageView.scrollEnabled = YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
