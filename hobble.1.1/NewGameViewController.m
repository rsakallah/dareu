//
//  NewGameViewController.m
//  scav.1
//
//  Created by Robin Mehta on 9/6/14.
//  Copyright (c) 2014 hobble. All rights reserved.
//

#import "NewGameViewController.h"

@interface NewGameViewController ()

@end

@implementation NewGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.homeDareArray = [[NSMutableArray alloc] init];
    self.walkDareArray = [[NSMutableArray alloc] init];
    self.partyDareArray = [[NSMutableArray alloc] init];
    
    //HOME DARES
    
    Dare *one = [[Dare alloc] init];
    one.dare = @"Speak in a British accent for the rest of the night";
    [self.homeDareArray addObject:one];
    
    Dare *two = [[Dare alloc] init];
    two.dare = @"Belly dance to a Shakira song";
    [self.homeDareArray addObject:two];
    
    Dare *three = [[Dare alloc] init];
    three.dare = @"Switch clothing with another player of the game";
    [self.homeDareArray addObject:three];

    Dare *four = [[Dare alloc] init];
    four.dare =  @"In the dark, turn around until dizzy, and then try to follow an iPhone flashlight";
    [self.homeDareArray addObject:four];
    
    Dare *five = [[Dare alloc] init];
    five.dare = @"Sing the national anthem";
    [self.homeDareArray addObject:five];
    
    //WALKING DARES
    
    Dare *six = [[Dare alloc] init];
    six.dare = @"Go down on one knee and propose to the first person that walks by";
    [self.walkDareArray addObject:six];
    
    Dare *seven = [[Dare alloc] init];
    seven.dare = @"Do the stanky leg";
    [self.walkDareArray addObject:seven];
    
    Dare *eight = [[Dare alloc] init];
    eight.dare = @"Yell, “Get a room!” to two people innocently talking/walking";
    [self.walkDareArray addObject:eight];
    
    Dare *nine = [[Dare alloc] init];
    nine.dare =  @"Freestyle rap for 30 seconds";
    [self.walkDareArray addObject:nine];
    
    Dare *ten = [[Dare alloc] init];
    ten.dare = @"Do walking lunges for 2 blocks";
    [self.walkDareArray addObject:ten];
    
    //PARTY DARES
    
    Dare *eleven = [[Dare alloc] init];
    eleven.dare = @"Go down on one knee and propose to the first person that walks by";
    [self.partyDareArray addObject:eleven];
    
    Dare *twelve = [[Dare alloc] init];
    twelve.dare = @"Do the stanky leg";
    [self.partyDareArray addObject:twelve];
    
    Dare *thirteen = [[Dare alloc] init];
    thirteen.dare = @"Yell, “Get a room!” to two people innocently talking/walking";
    [self.partyDareArray addObject:thirteen];
    
    Dare *fourteen = [[Dare alloc] init];
    fourteen.dare =  @"Freestyle rap for 30 seconds";
    [self.partyDareArray addObject:fourteen];
    
    Dare *fifteen = [[Dare alloc] init];
    fifteen.dare = @"Do walking lunges for 2 blocks";
    [self.partyDareArray addObject:fifteen];
    

    for (int i = 0; i < 5; i++) {
        Dare *new = [self homePrediction];
        self.DareLabel.text = new.dare;
    }
    
    for (int i = 0; i < 5; i++) {
        Dare *new = [self walkingPrediction];
        self.DareLabel.text = new.dare;
    }
    
    for (int i = 0; i < 5; i++) {
        Dare *new = [self partyPrediction];
        self.DareLabel.text = new.dare;
    }
    
    
    
}

- (Dare*) homePrediction {
    int random = arc4random_uniform(self.homeDareArray.count);
    return [self.homeDareArray objectAtIndex:random];
}

- (Dare*) walkingPrediction {
    int random = arc4random_uniform(self.walkDareArray.count);
    return [self.walkDareArray objectAtIndex:random];
}

- (Dare*) partyPrediction {
    int random = arc4random_uniform(self.partyDareArray.count);
    return [self.partyDareArray objectAtIndex:random];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
