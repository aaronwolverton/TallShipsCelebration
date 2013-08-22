//
//  SorlandetViewController.h
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/19/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SorlandetViewController : UIViewController <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@property (strong, nonatomic) NSArray *imageArray;

@property (strong, nonatomic) IBOutlet UILabel *label;


// @property (strong, nonatomic) IBOutlet UITextView *textView;

@end
