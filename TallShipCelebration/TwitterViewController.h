//
//  TwitterViewController.h
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/16/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwitterViewController : UIViewController <UIWebViewDelegate>
{
    IBOutlet UIWebView *twitterWebView;
}

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
