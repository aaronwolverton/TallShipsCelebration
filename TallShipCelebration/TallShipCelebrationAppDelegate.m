//
//  TallShipCelebrationAppDelegate.m
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 6/27/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import "TallShipCelebrationAppDelegate.h"
#import "ShipsViewController.h"
#import "FlagshipNiagraViewController.h"


@implementation TallShipCelebrationAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    return YES;
}

// to get my scrolling to work I used user defined runtime attributes http:// stackoverflow.com/questions/2824435/uiscrollview-not-scrolling?lq=1

// Tutorial for the correct way to do a UIWebView to load a website http: //www.youtube.com/watch?v=zzoqnd8UP-M

// Tutorial for correctly using an activity indicator in a UIWebView  http ://www.youtube.com/watch?v=KMCh6k63dFk&NR=1&feature=fvwp


// Tutorial for correct way to do a table view in storyboard http:// www.youtube.com/watch?v=2_-Gpv_-nWU&list=PL31A1002BBDBB5713



- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  
       // NSArray *values = [[NSArray alloc] initWithObjects:textView.text,nil];
       // [values writeToFile:[self saveFilePath] atomically:YES];
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
