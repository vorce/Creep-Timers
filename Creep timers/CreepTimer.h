//
//  CreepTimer.h
//  Creep timers
//
//  Created by Joel Carlbark on 2011-08-09.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CreepTimer : NSObject {
  NSTimer *creepTimer;
  int minutes;
  int seconds;
  NSString *creepName;
  int startMinute;
  int startSecond;
  NSString *caption;
  Boolean creepUp;
  UIButton *creepButton;
}


- (void)setStartMinute:(int)m;
- (void)setStartSecond:(int)s;
- (void)setCreepName:(NSString*)name;
- (int)minutes;
- (int)seconds;
- (NSString*)creepName;
- (void)toggleCountdown;
- (void)modifyTime:(int)s;
- (NSString*)caption;
- (Boolean)isCreepUp;
- (void)reset;
- (void)setCreepButton:(UIButton *)button;

@end
