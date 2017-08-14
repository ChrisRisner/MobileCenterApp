//
//  ViewController.m
//  MobileTestApp
//
//  Created by Chris Risner on 8/8/17.
//  Copyright © 2017 Chris Risner. All rights reserved.
//

#import "ViewController.h"
@import MobileCenterAnalytics;
@import MobileCenterCrashes;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSDictionary *info = [[NSBundle mainBundle] infoDictionary];
    NSString *version = [info objectForKey:@"CFBundleShortVersionString"];
    NSString *buildNumber = [info objectForKey:@"CFBundleVersion"]; // example: 42
    [_lblVersionNumber setText:version];
    [_lblBuildNumber setText:buildNumber];

    //NSUUID *installId = [MSMobileCenter  installId];
    //NSString *installIdString = [installId UUIDString];
    //[_lblInstallID setText:installIdString];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tappedTriggerCustomEvent:(id)sender {
    NSLog(@"tappedTriggerCustomEvent");
    [MSAnalytics trackEvent:@"Button clicked"];
}
- (IBAction)tappedTriggerEventWIthProperties:(id)sender {
    NSLog(@"tappedTriggerCustomEventWithProperties");
    NSDictionary *properties = @{@"Category" : @"Buttons", @"Button Position" : @"2nd"};
    [MSAnalytics trackEvent:@"Button clicked" withProperties: properties];
    
}

- (IBAction)tappedriggerCrash:(id)sender {
    [MSCrashes generateTestCrash];
    //@throw NSInternalInconsistencyException;
}

@end
