//
//  MapsViewController.m
//  TallShipCelebration
//
//  Created by Aaron Wolverton on 7/6/13.
//  Copyright (c) 2013 Aaron Wolverton. All rights reserved.
//

#import "MapsViewController.h"
#import "MapBox.h"
#import "RMMapView.h"
#import "RMMapBoxSource.h"
#import "RMAnnotation.h"

#define kNormalMapID  @"wolve11at.map-m607lr6y"
#define kRetinaMapID  @"wolve11at.map-m607lr6y"

@interface MapsViewController ()


@end

@implementation MapsViewController
@synthesize label;

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
    
    RMMapBoxSource *tileSource = [[RMMapBoxSource alloc] initWithMapID:@"wolve11at.map-m607lr6y"];
    
    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:tileSource];
    
    // http ://support.mapbox.com/discussions/mapbox-ios-sdk/1078-mapbox-online-map-on-ios HELPED LINK MAP FROM MAP BOX WEBSITE WITHOUT HARD CODING ANNOTATIONS/MARKERS!
    /*mapView.tileSource = [[RMMapBoxSource alloc] initWithMapID:([[UIScreen mainScreen] scale] > 1.0 ? kRetinaMapID : kNormalMapID)
                                              enablingDataOnMapView:mapView];
    */
     
    mapView.showsUserLocation = YES;
    
    mapView.delegate = self;
    
    [mapView setFrame:CGRectMake(0,0, 320, 548)];
    [mapView setCenterCoordinate:CLLocationCoordinate2DMake(43.598109, -83.893255) animated:YES];
    [mapView setZoom:15.4 animated:YES];
    
    
    [self.view addSubview:mapView];
    
    // CODE FOR: setting annotations by hand before I figured out the code to load my map from MapBox SimpleStyle
     
    RMAnnotation *annotation1 = [[RMAnnotation alloc] initWithMapView:mapView
                                                          coordinate:CLLocationCoordinate2DMake(43.596586, -83.892558)
                                                            andTitle:@"Lynx"];
    annotation1.userInfo = @"Lynx";
    [mapView addAnnotation:annotation1];
    
    RMAnnotation *annotation2 = [[RMAnnotation alloc] initWithMapView:mapView
                                                          coordinate:CLLocationCoordinate2DMake(43.597106, -83.892354)
                                                            andTitle:@"Flagship Niagra"];
    annotation2.userInfo = @"Flagship Niagra";
    [mapView addAnnotation:annotation2];
    
    
    RMAnnotation *annotation3 = [[RMAnnotation alloc] initWithMapView:mapView
                                                           coordinate:CLLocationCoordinate2DMake(43.597662, -83.892139)
                                                             andTitle:@"Pride of Baltimore"];
    annotation3.userInfo = @"Pride of Baltimore";
    [mapView addAnnotation:annotation3];
    
    RMAnnotation *annotation4 = [[RMAnnotation alloc] initWithMapView:mapView
                                                           coordinate:CLLocationCoordinate2DMake(43.598248, -83.891897)
                                                             andTitle:@"Sorlandet"];
    annotation4.userInfo = @"Sorlandet";
    [mapView addAnnotation:annotation4];
    
    RMAnnotation *annotation5 = [[RMAnnotation alloc] initWithMapView:mapView
                                                           coordinate:CLLocationCoordinate2DMake(43.598812, -83.891661)
                                                             andTitle:@"Peacemaker"];
    annotation5.userInfo = @"Peacemaker";
    [mapView addAnnotation:annotation5];
    
    RMAnnotation *annotation6 = [[RMAnnotation alloc] initWithMapView:mapView
                                                           coordinate:CLLocationCoordinate2DMake(43.599266, -83.891441)
                                                             andTitle:@"Unicorn"];
    annotation6.userInfo = @"Unicorn";
    [mapView addAnnotation:annotation6];
    
    
    RMAnnotation *annotation7 = [[RMAnnotation alloc] initWithMapView:mapView
                                                           coordinate:CLLocationCoordinate2DMake(43.598023, -83.894296)
                                                             andTitle:@"Denis Sullivan"];
    annotation7.userInfo = @"Denis Sullivan";
    [mapView addAnnotation:annotation7];
    
    RMAnnotation *annotation8 = [[RMAnnotation alloc] initWithMapView:mapView
                                                           coordinate:CLLocationCoordinate2DMake(43.598575, -83.894156)
                                                             andTitle:@"Pathfinder"];
    annotation8.userInfo = @"Pathfinder";
    [mapView addAnnotation:annotation8];
    
    RMAnnotation *annotation9 = [[RMAnnotation alloc] initWithMapView:mapView
                                                           coordinate:CLLocationCoordinate2DMake(43.599305, -83.893947)
                                                             andTitle:@"Playfair"];
    annotation9.userInfo = @"Playfair";
    [mapView addAnnotation:annotation9];
    
    RMAnnotation *annotation10 = [[RMAnnotation alloc] initWithMapView:mapView
                                                           coordinate:CLLocationCoordinate2DMake(43.599954, -83.893764)
                                                             andTitle:@"Madeline"];
    annotation10.userInfo = @"Madeline";
    [mapView addAnnotation:annotation10];
    
    RMAnnotation *annotation11 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.600676, -83.893560)
                                                              andTitle:@"Appledore"];
    annotation11.userInfo = @"Appledore";
    [mapView addAnnotation:annotation11];
    
    RMAnnotation *annotation12 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.596978, -83.894612)
                                                              andTitle:@"Hindu"];
    annotation12.userInfo = @"Hindu";
    [mapView addAnnotation:annotation12];
    
    RMAnnotation *annotation13 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.598431, -83.890283)
                                                              andTitle:@"Wenona Park"];
    annotation13.userInfo = @"Wenona Park";
    [mapView addAnnotation:annotation13];
    
    RMAnnotation *annotation14 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.597953, -83.889752)
                                                              andTitle:@"Delta College Planetarium"];
    annotation14.userInfo = @"Delta College Planetarium";
    [mapView addAnnotation:annotation14];
    
    RMAnnotation *annotation15 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.599053, -83.890175)
                                                              andTitle:@"Food Court (WP)"];
    annotation15.userInfo = @"Food Court (WP)";
    [mapView addAnnotation:annotation15];
    
    RMAnnotation *annotation16 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.598116, -83.891152)
                                                              andTitle:@"Maritime Music Festival (WP)"];
    annotation16.userInfo = @"Maritime Music Festival (WP)";
    [mapView addAnnotation:annotation16];
    
    RMAnnotation *annotation17 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.597056, -83.891441)
                                                              andTitle:@"Storytellers Corner"];
    annotation17.userInfo = @"Storytellers Corner";
    [mapView addAnnotation:annotation17];
    
    RMAnnotation *annotation18 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.597673, -83.896292)
                                                              andTitle:@"Food Court (VMP)"];
    annotation18.userInfo = @"Food Court (VMP)";
    [mapView addAnnotation:annotation18];
    
    RMAnnotation *annotation19 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.598963, -83.895058)
                                                              andTitle:@"Ballads and Brews (VMP)"];
    annotation19.userInfo = @"Ballads and Brews (VMP)";
    [mapView addAnnotation:annotation19];
    
    RMAnnotation *annotation20 = [[RMAnnotation alloc] initWithMapView:mapView
                                                            coordinate:CLLocationCoordinate2DMake(43.598707, -83.896496)
                                                              andTitle:@"Veterans Memorial Park (VMP)"];
    annotation20.userInfo = @"Veterans Memorial Park (VMP)";
    [mapView addAnnotation:annotation20];
    
}



- (RMMapLayer *)mapView:(RMMapView *)mapView layerForAnnotation:(RMAnnotation *)annotation
{
    if (annotation.isUserLocationAnnotation)
        return nil;
    
    RMMarker *marker;
    
    // For a more CUSTOM ANNOTATION try using RMMarker - label functionality. http://support.mapbox.com/discussions/mapbox-ios-sdk/864-custom-annotation
    
    if ([annotation.userInfo isEqualToString:@"Lynx"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lynx_annotation.png"]];
    }
    else if ([annotation.userInfo isEqualToString:@"Flagship Niagra"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Flagshipniagra_annotation.png"]];
    }
    
    else if ([annotation.userInfo isEqualToString:@"Pride of Baltimore"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PrideofBaltimore_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Sorlandet"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Sorlandet_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Peacemaker"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Peacemaker_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Unicorn"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Unicorn_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Denis Sullivan"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Denissullivan_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Pathfinder"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Pathfinder_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Playfair"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Playfair_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Madeline"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Madeline_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Appledore"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Appledore_annotation.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Hindu"])
    {
        //UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 80, 80)];
        //label.backgroundColor = [UIColor redColor];
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"harbor" tintColor:[UIColor yellowColor]];
        marker.leftCalloutAccessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Hindu_annotation.png.png"]];

    }
    else if ([annotation.userInfo isEqualToString:@"Wenona Park"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"circle" tintColor:[UIColor redColor]];
    }
    else if ([annotation.userInfo isEqualToString:@"Delta College Planetarium"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"star" tintColor:[UIColor orangeColor]];
    }
    else if ([annotation.userInfo isEqualToString:@"Food Court (WP)"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"restaurant" tintColor:[UIColor orangeColor]];
    }
    else if ([annotation.userInfo isEqualToString:@"Maritime Music Festival (WP)"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"embassy" tintColor:[UIColor orangeColor]];
    }
    else if ([annotation.userInfo isEqualToString:@"Storytellers Corner"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"library" tintColor:[UIColor orangeColor]];
    }
    else if ([annotation.userInfo isEqualToString:@"Food Court (VMP)"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"restaurant" tintColor:[UIColor orangeColor]];
    }
    else if ([annotation.userInfo isEqualToString:@"Ballads and Brews (VMP)"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"bar" tintColor:[UIColor orangeColor]];
    }
    else if ([annotation.userInfo isEqualToString:@"Veterans Memorial Park (VMP)"])
    {
        marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"circle" tintColor:[UIColor redColor]];
        // ASK MAP BOX WHY YOU CANT CUSTOMIZE COLOR
        // marker = [[RMMarker alloc] initWithMapBoxMarkerImage:@"circle" tintColor:[UIColor colorWithRed:255.0f green:0.0f blue:255.0f alpha:1]];

    }
    
    
    marker.canShowCallout = YES;
    
    marker.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    return marker;
}


//I CHANGED BELOW CODE TO ABOVE TO. IF ABOVE DOESNT WORK, REVERT TO BELOW CODE.
/*
 - (RMMapLayer *)mapView:(RMMapView *)mapView layerForAnnotation:(RMAnnotation *)annotation1
 {
 if (annotation1.isUserLocationAnnotation)
 return nil;
 
 RMMarker *marker = [[RMMarker alloc] initWithMapBoxMarkerImage:[annotation1.userInfo objectForKey:@"marker-symbol"]
 tintColorHex:[annotation1.userInfo objectForKey:@"marker-color"]
 sizeString:[annotation1.userInfo objectForKey:@"marker-size"]];
 
 marker.canShowCallout = YES;
 
 // marker.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
 
 return marker;
 }
 */


/* WHEN IM READY IM HOPING METHOD BELOW WILL HELP ME JUMP TO A DIFF VC WHEN CLICKING ANNOTATION. CODE BELOW MAY BE A BETTER FIT NOT SURE.
- (void)tapOnAnnotation:(RMAnnotation *)annotation onMap:(RMMapView *)map
{
    
}


    
    // USE TWO LINES BELOW FOR ACCESSORY CHEVRON. MUST ADD MORE CODE TO JUMP TO OTHER VIEW CONTROLLER. NOT SURE HOW TO DO THAT YET BUT WOULD BE NICE TO JUMP TO EACH SHIP. SEE SCREENSHOT ON DESKTOP
    // - (void)tapOnCalloutAccessoryControl:(UIControl *)control forAnnotation:(RMAnnotation *)annotation onMap:(RMMapView *)map
    // {
    //     NSLog(@"You tapped the callout button!");
    
    
    
    /*
 
     RMMapBoxSource *tileSource = [[RMMapBoxSource alloc] initWithMapID:@"wolve11at.map-m607lr6y"];
     
     RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:tileSource];
     
     [self.view addSubview:mapView];
     
     [mapView setFrame:CGRectMake(0,0, 320, 548)];
     [mapView setCenterCoordinate:CLLocationCoordinate2DMake(43.599, -83.888) animated:YES];
     [mapView setZoom:15.0 animated:YES];
     
     RMPointAnnotation *ann = [[RMPointAnnotation alloc] initWithMapView:mapView
     coordinate:CLLocationCoordinate2DMake(43.599, -83.888)
     andTitle:@"Tall Ship Celebration"];
     [mapView addAnnotation:ann];
     [mapView selectAnnotation:ann animated:YES];
     
     
     mapView.showsUserLocation = YES;
     mapView.delegate = self;
     
     // mapView.zoom = 14;
     mapView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
     mapView.adjustTilesForRetinaDisplay = YES; // these tiles aren't designed specifically for retina, so make them legible
     [self.view addSubview:mapView];
     */








/* THIS CODE TAKE ANNOTATION OFF THE SCREEN WITH A TAP. I DONT WANT THIS
 #pragma mark -
 
 - (void)singleTapOnMap:(RMMapView *)mapView at:(CGPoint)point
 {
 [mapView removeAllAnnotations];
 
 RMMBTilesSource *source = (RMMBTilesSource *)mapView.tileSource;
 
 if ([source conformsToProtocol:@protocol(RMInteractiveSource)] && [source supportsInteractivity])
 {
 NSString *formattedOutput = [source formattedOutputOfType:RMInteractiveSourceOutputTypeTeaser
 forPoint:point
 inMapView:mapView];
 
 if (formattedOutput && [formattedOutput length])
 {
 // parse the country name out of the content
 //
 NSUInteger startOfCountryName = [formattedOutput rangeOfString:@"<strong>"].location + [@"<strong>" length];
 NSUInteger endOfCountryName   = [formattedOutput rangeOfString:@"</strong>"].location;
 
 NSString *countryName = [formattedOutput substringWithRange:NSMakeRange(startOfCountryName, endOfCountryName - startOfCountryName)];
 
 // parse the flag image out of the content
 //
 
 
 RMAnnotation *annotation = [RMAnnotation annotationWithMapView:mapView coordinate:[mapView pixelToCoordinate:point] andTitle:countryName];
 
 
 [mapView addAnnotation:annotation];
 
 [mapView selectAnnotation:annotation animated:YES];
 }
 }
 }
 */


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
