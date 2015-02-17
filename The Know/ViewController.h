//
//  ViewController.h
//  The Know
//
//  Created by Ben Tesch on 1/4/15.
//  Copyright (c) 2015 Space Millions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property(nonatomic, retain) IBOutlet MKMapView *mapView;
@property(nonatomic, retain) CLLocationManager *locationManager;
- (IBAction)zoomIn:(id)sender;

@end

