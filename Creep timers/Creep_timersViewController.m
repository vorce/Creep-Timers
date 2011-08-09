//
//  Creep_timersViewController.m
//  Creep timers
//
//  Created by Joel Carlbark on 2011-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Creep_timersViewController.h"

@implementation Creep_timersViewController

/*@synthesize baronTimer;
@synthesize dragonTimer;
@synthesize blueGolemTimer;
@synthesize purpleGolemTimer;
@synthesize blueLizardTimer;
@synthesize purpleLizardTimer;

@synthesize baronTime;
@synthesize dragonTime;
@synthesize blueGolemTime;
@synthesize purpleGolemTime;
@synthesize blueLizardTime;
@synthesize purpleLizardTime;*/

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
      break;
      
    case 300: // purple golem
      break;
      
    case 400: // blue lizard
      break;
      
    case 500: // purple lizard
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
      break;
      
    case 315: // purp golem
      break;
      
    case 415: // blue liz
      break;
      
    case 515: // purp liz
      break;
      
    default:
      break;
  }
}

/*
- (NSDate*)updateTime:(NSDate*)theDate modifyer:(int)seconds startTime:(NSString*)start {
  NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
  [dateFormat setDateFormat:@"m:ss"];
  NSString *dateStr = @"0:00";
  NSDate *zeroTime = [dateFormat dateFromString:dateStr];
  NSDate *newTime = [theDate dateByAddingTimeInterval:seconds];
  NSDate *startTime = [dateFormat dateFromString:start];
  
  NSCalendar *calendar = [NSCalendar currentCalendar];
  
  NSDateComponents *newComponents = [calendar components:(kCFCalendarUnitHour | kCFCalendarUnitMinute) fromDate:newTime];
  NSInteger nm = [newComponents minute];
  NSInteger ns = [newComponents second];
  
  NSDateComponents *startComps = [calendar components:(kCFCalendarUnitHour | kCFCalendarUnitMinute) fromDate:startTime];
  NSInteger sm = [startComps minute];
  NSInteger ss = [startComps second];
  
  if([newTime compare:startTime] == NSOrderedDescending) { // newTime > startTime
    newTime = startTime;
  }
  
  return newTime;
}

- (NSDate*)initTime:(NSString*)timeString {
  NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
  [dateFormat setDateFormat:@"m:ss"];
  
  NSDate *theCreepTime = [dateFormat dateFromString:timeString];
  
  return theCreepTime;
}

- (void)timerFireMethod:(NSTimer*)theTimer {
  NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
  [dateFormat setDateFormat:@"m:ss"];
  NSString *dateStr = @"0:00";
  NSDate *zeroTime = [dateFormat dateFromString:dateStr];
  
  if(theTimer == self.baronTimer) {
    self.baronTime = [self.baronTime dateByAddingTimeInterval:(-1)];
 
    if([self.baronTime isEqualToDate:zeroTime]) {
      [self.baronButton setTitle:@"Baron: UP!" forState:UIControlStateNormal];
      
      self.baronTime = [self initTime:@"7:00"];
      [self resetTimer:self.baronTimer];
    } else {
      NSString *caption = [NSString stringWithFormat:@"Baron: %@", baronTime];
      [self.baronButton setTitle:caption forState:UIControlStateNormal];
    }
  } else if(theTimer == self.dragonTimer) {
    dragonTime = [dragonTime dateByAddingTimeInterval:-1];
    
    if([dragonTime isEqualToDate:zeroTime]) {
      dragonTime = [self initTime:@"6:00"];
      [self resetTimer:dragonTimer];
    }
  }
}

- (void)resetTimer:(NSTimer*)theTimer {
  [theTimer invalidate];
  theTimer = nil;
} */

- (IBAction)resetTimers {
  [baron reset];
  [dragon reset];
}

@end
