//
//  Creep_timersAppDelegate.h
//  Creep timers
//
//  Created by Joel Carlbark on 2011-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Creep_timersViewController;

@interface Creep_timersAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Creep_timersViewController *viewController;

@end
