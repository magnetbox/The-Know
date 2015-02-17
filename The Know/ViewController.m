//
//  ViewController.m
//  The Know
//
//  Created by Ben Tesch on 1/4/15.
//  Copyright (c) 2015 Space Millions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.mapView.delegate = self;
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation = YES;
    [self.mapView setMapType:MKMapTypeStandard];
    [self.mapView setZoomEnabled:YES];
    [self.mapView setScrollEnabled:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(mapView.userLocation.coordinate, 10000, 10000);
    MKCoordinateRegion adjustRegion = [mapView regionThatFits:region];
    [mapView setRegion:adjustRegion animated:YES];
}

- (IBAction)zoomIn:(id)sender {
    MKUserLocation *userLocation = self.mapView.userLocation;
    NSLog(@"Location: %@",userLocation);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 10000, 10000);
    MKCoordinateRegion adjustRegion = [self.mapView regionThatFits:region];
    [self.mapView setRegion:adjustRegion animated:YES];
}


@end
