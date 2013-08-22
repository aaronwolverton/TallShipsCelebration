//
//  AppledoreViewController.m
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/7/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import "AppledoreViewController.h"

@interface AppledoreViewController ()

@end

#define kfontsize 16

@implementation AppledoreViewController

@synthesize scrollView;
@synthesize pageControl;
@synthesize imageArray;


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
    
// MATT ON ATTRIBUTED TEXT VARYED BY LINE
    UIFont *boldFont = [UIFont boldSystemFontOfSize: kfontsize];
    UIFont *regularFont = [UIFont systemFontOfSize: kfontsize];
    UIColor *foregroundColor = [UIColor whiteColor];
    
    //literals
    NSDictionary *attrs = @{NSFontAttributeName:boldFont, NSForegroundColorAttributeName:foregroundColor};
    NSDictionary *subattrs = @{NSFontAttributeName: regularFont};
    
    // break up the string into two different peices, instead of trying to use a range
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:@"Flag: " attributes:attrs];
    
    NSAttributedString *sub1 = [[NSAttributedString alloc] initWithString:@"USA\n" attributes:subattrs];
    [attributedText appendAttributedString:sub1];

    NSAttributedString *main2 = [[NSAttributedString alloc] initWithString:@"Rig: " attributes:attrs];
    [attributedText appendAttributedString:main2];
    
    NSAttributedString *sub2 = [[NSMutableAttributedString alloc] initWithString:@"Topsail Schooner\n" attributes:subattrs];
    [attributedText appendAttributedString:sub2];
    
    NSAttributedString *main3 = [[NSAttributedString alloc] initWithString:@"Homeport: " attributes:attrs];
    [attributedText appendAttributedString:main3];
    
    NSAttributedString *sub3 = [[NSAttributedString alloc] initWithString:@"Bay City, MI\n" attributes:subattrs];
    [attributedText appendAttributedString:sub3];

    NSAttributedString *main4 = [[NSAttributedString alloc] initWithString:@"Length Overall: " attributes:attrs];
    [attributedText appendAttributedString:main4];
    
    NSAttributedString *sub4 = [[NSMutableAttributedString alloc] initWithString:@"85 ft\n" attributes:subattrs];
    [attributedText appendAttributedString:sub4];
    
    NSAttributedString *main5 = [[NSAttributedString alloc] initWithString:@"Draft: " attributes:attrs];
    [attributedText appendAttributedString:main5];
    
    NSAttributedString *sub5 = [[NSAttributedString alloc] initWithString:@"9 ft. 6 in.\n" attributes:subattrs];
    [attributedText appendAttributedString:sub5];
    
    NSAttributedString *main6 = [[NSAttributedString alloc] initWithString:@"Beam: " attributes:attrs];
    [attributedText appendAttributedString:main6];
    
    NSAttributedString *sub6 = [[NSMutableAttributedString alloc] initWithString:@"18 ft. 5 in.\n" attributes:subattrs];
    [attributedText appendAttributedString:sub6];
    
    NSAttributedString *main7 = [[NSAttributedString alloc] initWithString:@"Rig Height: " attributes:attrs];
    [attributedText appendAttributedString:main7];
    
    NSAttributedString *sub7 = [[NSAttributedString alloc] initWithString:@"76 ft.\n" attributes:subattrs];
    [attributedText appendAttributedString:sub7];
    
    NSAttributedString *main8 = [[NSAttributedString alloc] initWithString:@"Sail Area: " attributes:attrs];
    [attributedText appendAttributedString:main8];
    
    NSAttributedString *sub8 = [[NSMutableAttributedString alloc] initWithString:@"3,500 sq. ft.\n" attributes:subattrs];
    [attributedText appendAttributedString:sub8];
    
    NSAttributedString *main9 = [[NSAttributedString alloc] initWithString:@"Displacement: " attributes:attrs];
    [attributedText appendAttributedString:main9];
    
    NSAttributedString *sub9 = [[NSAttributedString alloc] initWithString:@"48 GRT\n" attributes:subattrs];
    [attributedText appendAttributedString:sub9];

    NSAttributedString *main10 = [[NSAttributedString alloc] initWithString:@"Crew: " attributes:attrs];
    [attributedText appendAttributedString:main10];
    
    NSAttributedString *sub10 = [[NSAttributedString alloc] initWithString:@"4 Trainees\n" attributes:subattrs];
    [attributedText appendAttributedString:sub10];
    
    [_label setAttributedText:attributedText];

    
    
    // textView changing text color, background and size
    _textView.backgroundColor = [UIColor clearColor];
    _textView.textColor = [UIColor whiteColor];
    [_textView setFont:[UIFont systemFontOfSize:16]];
    
    


    
    // The Appledore IV and the schooner Hindu will be offering a full schedule of sail-away excursions through out Tall Ship® Weekend. Outings will be nearly 3 hours in length and will depart throughout the day from the ships’ docks located within the festival grounds (see map).
    
    // Reservations for a sail-away excursion can be made through BaySail. Vew the schedule for sail times and make a reservation. For more information, or to ask about a private group charter, please call BaySail at (989) 895-5193.


    
    // CODE FOR SWIPING IMAGES! http: //iosmadesimple.blogspot.com/2013/01/page-control-for-switching-between-views.html
    imageArray = [[NSArray alloc] initWithObjects:@"Appledore_1.png", @"Appledore_2.png", @"Appledore_3.png", nil];
    
    for (int i = 0; i < [imageArray count]; i++) {
        
        // Well create an image View object in every 'page' of our scrollView
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:i]];
        [self.scrollView addSubview:imageView];
    }
    // Set the content size of out scrollview according to the total width of our imageView objects
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [imageArray count], scrollView.frame.size.height);
    
    NSLog(@"Appledore View Loaded");
}


#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) +1;
    self.pageControl.currentPage = page;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
