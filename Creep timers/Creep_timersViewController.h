//
//  Creep_timersViewController.h
//  Creep timers
//
//  Created by Joel Carlbark on 2011-08-08.
//  Copyright 2011 Joel Carlbark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreepTimer.h"

@interface Creep_timersViewController : UIViewController {
  CreepTimer *baron;
  CreepTimer *dragon;
  CreepTimer *blueGolem;
  CreepTimer *purpleGolem;
  CreepTimer *blueLizard;
  CreepTimer *purpleLizard;
}

@property (retain) IBOutlet UIButton *baronButton;
@property (retain) IBOutlet UIButton *dragonButton;
@property (retain) IBOutlet UIButton *blueGolemButton;
@property (retain) IBOutlet UIButton *purpleGolemButton;
@property (retain) IBOutlet UIButton *blueLizardButton;
@property (retain) IBOutlet UIButton *purpleLizardButton;

- (IBAction)startCreepTimer:sender;

- (IBAction)resetTimers;

- (IBAction)modify15seconds:sender;

@end
