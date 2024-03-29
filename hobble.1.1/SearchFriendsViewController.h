//
//  SearchFriendsViewController.h
//  hobble.1.1
//
//  Created by Robin Mehta on 8/18/14.
//  Copyright (c) 2014 hobble. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "FriendsTableViewController.h"
#import "AppDelegate.h"

@interface SearchFriendsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UISearchDisplayDelegate, UISearchBarDelegate>

@property (nonatomic, strong) PFUser *currentUser;
@property (nonatomic, strong) NSArray *searchResults; // all users in app
@property (nonatomic, strong) NSArray *finalResults; // searched users' usernames
@property (nonatomic, strong) NSMutableArray *usernames; // all users' usernames

@property (nonatomic, strong) PFRelation *friendsRelation;
@property (nonatomic, strong) NSMutableArray *friendUsers; // all friends

@end
