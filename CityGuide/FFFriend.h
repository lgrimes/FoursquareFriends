//
//  CFFFriend.h
//  Foursquare Friends
//
//  Created by Lauren Grimes  12/08/13.
//  Copyright (c) 2013. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FFFriend : NSObject

@property (nonatomic, strong) NSString *friendName;
@property (nonatomic, strong) NSString *friendStatus;

//NOTE: This is where i plan on saving a search of flickr for pictures of the venue/location/area
@property (nonatomic, strong) NSString *friendLocationPicture;

@end
