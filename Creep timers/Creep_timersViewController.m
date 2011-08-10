//
//  Creep_timersViewController.m
//  Creep timers
//
//  Created by Joel Carlbark on 2011-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Creep_timersViewController.h"

@implementation Creep_timersViewController

@synthesize baronButton;
@synthesize dragonButton;
@synthesize blueGolemButton;
@synthesize purpleGolemButton;
@synthesize blueLizardButton;
@synthesize purpleLizardButton;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
  [super viewDidLoad];
  
  baron = [[CreepTimer alloc] init];
  [baron setStartMinute:7];
  [baron setStartSecond:0];
  [baron setCreepName:@"Baron"];
  [baron setCreepButton:baronButton];
  
  dragon = [[CreepTimer alloc] init];
  [dragon setStartMinute:6];
  [dragon setStartSecond:0];
  [dragon setCreepName:@"Dragon"];
  [dragon setCreepButton:dragonButton];
  
  blueGolem = [[CreepTimer alloc] init];
  [blueGolem setStartMinute:5];
  [blueGolem setStartSecond:0];
  [blueGolem setCreepName:@"Golem (Blue team)"];
  [blueGolem setCreepButton:blueGolemButton];
  
  purpleGolem = [[CreepTimer alloc] init];
  [purpleGolem setStartMinute:5];
  [purpleGolem setStartSecond:0];
  [purpleGolem setCreepName:@"Golem (Purple team)"];
  [purpleGolem setCreepButton:purpleGolemButton];
  
  blueLizard = [[CreepTimer alloc] init];
  [blueLizard setStartMinute:5];
  [blueLizard setStartSecond:0];
  [blueLizard setCreepName:@"Lizard (Blue team)"];
  [blueLizard setCreepButton:blueLizardButton];
  
  purpleLizard = [[CreepTimer alloc] init];
  [purpleLizard setStartMinute:5];
  [purpleLizard setStartSecond:0];
  [purpleLizard setCreepName:@"Lizard (Purple team)"];
  [purpleLizard setCreepButton:purpleLizardButton];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (IBAction)startCreepTimer:sender {
  UIButton *button = (UIButton *)sender;
  
  switch([button tag]) {
    case 0: // baron
      [baron toggleCountdown];
      break;
      
    case 100: // dragon
      [dragon toggleCountdown];
      break;
      
    case 200: // blue golem
      [blueGolem toggleCountdown];
      break;
      
    case 300: // purple golem
      [purpleGolem toggleCountdown];
      break;
      
    case 400: // blue lizard
      [blueLizard toggleCountdown];
      break;
      
    case 500: // purple lizard
      [purpleLizard toggleCountdown];
      break;
      
    default:
      break;
  }
}

- (IBAction)modify15seconds:sender {
  UIButton *button = (UIButton *)sender;
  int time;
  
  if([sender selectedSegmentIndex] == 0) {
    time = -15;
  } else {
    time = 15;
  }
  
  
  switch([button tag]) {
    case 15: // baron
      [baron modifyTime:time];
      break;
      
    case 115: // dragon
      [dragon modifyTime:time];
      break;
      
    case 215: // blue golem
      [blueGolem modifyTime:time];
      break;
      
    case 315: // purp golem
      [purpleGolem modifyTime:time];
      break;
      
    case 415: // blue liz
      [blueLizard modifyTime:time];
      break;
      
    case 515: // purp liz
      [purpleLizard modifyTime:time];
      break;
      
    default:
      break;
  }
}

- (IBAction)resetTimers {
  [baron reset];
  [dragon reset];
  [blueGolem reset];
  [purpleGolem reset];
  [blueLizard reset];
  [purpleLizard reset];
}

@end
