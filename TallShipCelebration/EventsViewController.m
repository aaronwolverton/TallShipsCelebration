//
//  EventsViewController.m
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/5/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import "EventsViewController.h"

@interface EventsViewController ()

@end

@implementation EventsViewController

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
	// Do any additional setup after loading the view.
    
    // textView changing text color, background and size
    _eventsTextView1.backgroundColor = [UIColor clearColor];
    _eventsTextView1.textColor = [UIColor whiteColor];
    [_eventsTextView1 setFont:[UIFont systemFontOfSize:16]];
    
    
    NSLog(@"View Loaded");

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    {
        [super didReceiveMemoryWarning];
        // Add code to clean up any of your own resources that are no longer necessary.
        if ([self.view window] == nil)
        {
            // Add code to preserve data stored in the views that might be
            // needed later.
            
            // Add code to clean up other strong references to the view in
            // the view hierarchy.
            self.view = nil;
        }
    }
}

@end
