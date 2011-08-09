//
//  CreepTimer.m
//  Creep timers
//
//  Created by Joel Carlbark on 2011-08-09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CreepTimer.h"

@implementation CreepTimer

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
      minutes = 9;
      seconds = 0;
      caption = @"";
      creepUp = TRUE;
    }
    
    return self;
}

- (void)timerFireMethod:(NSTimer*)theTimer {
  seconds--;
  if(seconds < 0) {
    minutes--;
    if(minutes < 0) {
      [self reset];
    } else {
      seconds = 59;
    }
  }
  [self caption];
  [creepButton setTitle:caption forState:UIControlStateNormal];
}

- (void)setStartMinute:(int)m {
  startMinute = m;
}

- (void)setStartSecond:(int)s {
  startSecond = s;
}

- (void)setCreepName:(NSString*)name {
  creepName = name;
}

- (int)minutes {
  return minutes;
}

- (int)seconds {
  return seconds;
}

- (NSString*)creepName {
  return creepName;
}

- (void)toggleCountdown {
  if(creepTimer == nil) {
    seconds = startSecond;
    minutes = startMinute;
    creepUp = FALSE;
    creepTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                          target:self
                          selector:@selector(timerFireMethod:)
                          userInfo:nil
                          repeats:YES];
  } else {
    [self reset];
  }
}

- (NSString*)caption {
  if(creepUp == TRUE) {
    caption = [NSString stringWithFormat:@"%@: UP!", creepName];
  } else {
    if(seconds < 10) {
      caption = [NSString stringWithFormat:@"%@: %d:0%d", creepName, minutes, seconds];
    } else {
      caption = [NSString stringWithFormat:@"%@: %d:%d", creepName, minutes, seconds];
    }
  }
  
  return caption;
}

- (Boolean)isCreepUp {
  return creepUp;
}

- (void)reset {
  creepUp = TRUE;
  seconds = startSecond;
  minutes = startMinute;
  [creepTimer invalidate];
  creepTimer = nil;
  [self caption];
  [creepButton setTitle:caption forState:UIControlStateNormal];
}

- (void)modifyTime:(int)s {
  seconds += s;
  if(seconds < 0) {
    minutes--;
    if(minutes < 0) {
      [self reset];
    } else {
      seconds = 59;
    }
  } else if(seconds > 59) {
    minutes++;
    seconds = 0;
    if(minutes > startMinute) {
      minutes = startMinute;
    }
  }
}

- (void)setCreepButton:(UIButton *)button {
  creepButton = button;
}

@end
