//
//  WaitTimeViewController.m
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/16/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import "WaitTimeViewController.h"

@interface WaitTimeViewController ()

@end

@implementation WaitTimeViewController

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
    
    NSURL *waitTimeURL = [NSURL URLWithString:@"https://twitter.com/TSBCLines"];
    NSURLRequest *twitterRequest = [NSURLRequest requestWithURL:waitTimeURL];
    
    [waitTimeWebView loadRequest:twitterRequest];
    
    NSLog(@"View Did Load");
}


- (void)webViewDidStartLoad:(UIWebView *)webView; //a web view starts loading
{
    [_activityIndicator startAnimating];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView;//web view finishes loading
{
    [_activityIndicator stopAnimating];
    
    NSLog(@"Web View Did Finish Loading");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error; //web view failed to load
{
    [_activityIndicator stopAnimating];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
