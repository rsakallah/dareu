//
//  NewGameViewController.h
//  scav.1
//
//  Created by Robin Mehta on 9/6/14.
//  Copyright (c) 2014 hobble. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dare.h"

@interface NewGameViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *homeDareArray;
@property (nonatomic, strong) NSMutableArray *walkDareArray;
@property (nonatomic, strong) NSMutableArray *partyDareArray;

@property (strong, nonatomic) IBOutlet UILabel *DareLabel;



@end
