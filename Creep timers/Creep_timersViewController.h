//
//  Creep_timersViewController.h
//  Creep timers
//
//  Created by Joel Carlbark on 2011-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreepTimer.h"

@interface Creep_timersViewController : UIViewController {
    /*NSTimer *baronTimer;
    NSTimer *dragonTimer;
    NSTimer *blueGolemTimer;
    NSTimer *purpleGolemTimer;
    NSTimer *blueLizardTimer;
    NSTimer *purpleLizardTimer;*/
  CreepTimer *baron;
  CreepTimer *dragon;
}

/*@property (retain) NSTimer *baronTimer;
@property (retain) NSTimer *dragonTimer;
@property (retain) NSTimer *blueGolemTimer;
@property (retain) NSTimer *purpleGolemTimer;
@property (retain) NSTimer *blueLizardTimer;
@property (retain) NSTimer *purpleLizardTimer;

@property (retain) NSDate *baronTime;
@property (retain) NSDate *dragonTime;
@property (retain) NSDate *blueGolemTime;
@property (retain) NSDate *purpleGolemTime;
@property (retain) NSDate *blueLizardTime;
@property (retain) NSDate *purpleLizardTime;
*/
@property (retain) IBOutlet UIButton *baronButton;
@property (retain) IBOutlet UIButton *dragonButton;
@property (retain) IBOutlet UIButton *blueGolemButton;
@property (retain) IBOutlet UIButton *purpleGolemButton;
@property (retain) IBOutlet UIButton *blueLizardButton;
@property (retain) IBOutlet UIButton *purpleLizardButton;

- (IBAction)startCreepTimer:sender;

- (IBAction)resetTimers;

// - (NSDate*)initTime:(NSString*)timeString;

//- (void)resetTimer:(NSTimer*)theTimer;

- (IBAction)modify15seconds:sender;

//- (NSDate*)updateTime:(NSDate*)theDate modifyer:(int)seconds startTime:(NSString*)start;


@end
