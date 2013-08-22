//
//  HinduViewController.m
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/19/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import "HinduViewController.h"

// PROBLEMS I RAN INTO COPYING APPLEDORE SCROLLVIEW TO D_SULLIVAN SCROLL VIEW.
// - APP CRASHED DUE TO TWO CONNECTIONS ON TOP OF EACH OTHER
// - UITEXTVIEW CODE WOULDNT SHOW UP BECAUSE CONNECTINO WASNT RIGHT AT FIRST
// - IMAGE PAGE CONTROL WOULDNT LOAD PICTURES BECAUSE CONNECTIONS WERE STILL SET TO APPLEDORE


#define kfontsize 16

@implementation HinduViewController

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
    
    NSAttributedString *sub2 = [[NSMutableAttributedString alloc] initWithString:@"Schooner\n" attributes:subattrs];
    [attributedText appendAttributedString:sub2];
    
    NSAttributedString *main3 = [[NSAttributedString alloc] initWithString:@"Homeport: " attributes:attrs];
    [attributedText appendAttributedString:main3];
    
    NSAttributedString *sub3 = [[NSAttributedString alloc] initWithString:@"Key West, FL\n" attributes:subattrs];
    [attributedText appendAttributedString:sub3];
    
    NSAttributedString *main4 = [[NSAttributedString alloc] initWithString:@"Length Overall: " attributes:attrs];
    [attributedText appendAttributedString:main4];
    
    NSAttributedString *sub4 = [[NSMutableAttributedString alloc] initWithString:@"54.6 ft\n" attributes:subattrs];
    [attributedText appendAttributedString:sub4];
    
    NSAttributedString *main5 = [[NSAttributedString alloc] initWithString:@"Draft: " attributes:attrs];
    [attributedText appendAttributedString:main5];
    
    NSAttributedString *sub5 = [[NSAttributedString alloc] initWithString:@"8 ft. 2 in. ft.\n" attributes:subattrs];
    [attributedText appendAttributedString:sub5];
    
    NSAttributedString *main10 = [[NSAttributedString alloc] initWithString:@"Crew: " attributes:attrs];
    [attributedText appendAttributedString:main10];
    
    NSAttributedString *sub10 = [[NSAttributedString alloc] initWithString:@"5\n" attributes:subattrs];
    [attributedText appendAttributedString:sub10];
    
    [_label setAttributedText:attributedText];
    
    
    
    // textView changing text color, background and size
    //_textView.backgroundColor = [UIColor clearColor];
    //_textView.textColor = [UIColor whiteColor];
    //[_textView setFont:[UIFont systemFontOfSize:16]];
    // The Denis Sullivan is an educational sailing vessel connecting learners of all ages to the Great Lakes, oceans and our world of water through experiential learning and technology. She was completed in 2000 by professional shipwrights and nearly 1,000 volunteers and is the world’s only recreation of a 19th century three-masted Great Lakes schooner. The Denis Sullivan travels over 18,000 nautical miles each year from her summer home at Discovery World to her winter home in Southern Florida.
    
    
    
    
    
    // CODE FOR SWIPING IMAGES! http: //iosmadesimple.blogspot.com/2013/01/page-control-for-switching-between-views.html
    imageArray = [[NSArray alloc] initWithObjects:@"Hindu_1.png", @"Hindu_2.png", @"Hindu_3.png", nil];
    
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
    
    NSLog(@"Hindu View Loaded");
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

