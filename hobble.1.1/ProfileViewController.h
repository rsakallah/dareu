//
//  ProfileViewController.h
//  scav.1
//
//  Created by Robin Mehta on 9/6/14.
//  Copyright (c) 2014 hobble. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

// TABLE VIEW SHOULD SHOW BADGES EARNED

@interface ProfileViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *Name;
@property (nonatomic, strong) PFUser *currentUser;


@end
