//
//  CGCityController.h
//  CityGuide
//
//  Created by Jesse Collis on 30/07/13.
//  Copyright (c) 2013 RMIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface FFFriendController : UIViewController
{
    IBOutlet UIImageView *pictureView;
    IBOutlet UILabel *descriptionLabel;
    IBOutlet UITextField *descriptionView;
    //IBOutlet UITextView *messageView;
    IBOutlet UIButton *sendButton;
    //IBOutlet UILabel *messageLabel;
    IBOutlet UIScrollView *scrollView;
    IBOutlet MKMapView *friendLocationMap;
}

@property (nonatomic, strong) NSIndexPath *indexPath;

- (id)initWithIndexPath:(NSIndexPath *)indexPath;

@end
