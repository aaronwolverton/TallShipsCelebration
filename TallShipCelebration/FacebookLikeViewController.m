//
//  FacebookLikeViewController.m
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/16/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import "FacebookLikeViewController.h"

@interface FacebookLikeViewController ()

@end

@implementation FacebookLikeViewController

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
    
    NSURL *facebookURL = [NSURL URLWithString:@"https://www.facebook.com/TallShipCelebration"];
    NSURLRequest *facebookRequest = [NSURLRequest requestWithURL:facebookURL];
    
    [facebookWebView loadRequest:facebookRequest];
}


- (void)webViewDidStartLoad:(UIWebView *)webView; //a web view starts loading
{
    [_activityIndicator startAnimating];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView;//web view finishes loading
{
    [_activityIndicator stopAnimating];

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
