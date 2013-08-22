//
//  LiveNewsViewController.m
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/5/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import "LiveNewsViewController.h"

@interface LiveNewsViewController ()

@end

@implementation LiveNewsViewController

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
    
    
    // Tutorial for the correct way to do a UIWebView to load a website http: //www.youtube.com/watch?v=zzoqnd8UP-M
    
    // Tutorial for correctly using an activity indicator in a UIWebView  http ://www.youtube.com/watch?v=KMCh6k63dFk&NR=1&feature=fvwp
    
    
    // Tutorial for correct way to do a table view in storyboard http:// www.youtube.com/watch?v=2_-Gpv_-nWU&list=PL31A1002BBDBB5713
}


- (void)viewWillAppear:(BOOL)animated
{
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    // Add code to clean up any of your own resources that are no longer necessary.
    if ([self.view window] == nil);
}


@end
