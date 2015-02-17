//
//  AppDelegate.h
//  The Know
//
//  Created by Ben Tesch on 1/4/15.
//  Copyright (c) 2015 Space Millions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) UIWindow *window;


@end

