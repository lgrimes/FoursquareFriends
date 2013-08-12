//
//  CGViewController.h
//  CityGuide
//
//  Created by Jesse Collis on 12/07/13.
//  Copyright (c) 2013 RMIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
//    NOTE: JC - This array is better off as property, regardless of what the book says.
//               There's no reason not to use properties, even in the simplest cases.
//    NSMutableArray *cities;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *cities;

@end
