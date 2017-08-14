//
//  MobileTestAppUITests.m
//  MobileTestAppUITests
//
//  Created by Chris Risner on 8/14/17.
//  Copyright © 2017 Chris Risner. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface MobileTestAppUITests : XCTestCase

@end

@implementation MobileTestAppUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    //[MCLabel label:@"testExample"];
    [app.buttons[@"Trigger Custom Event"] tap];
    [app.buttons[@"Trigger Event w/ Props"] tap];
    
}

- (void)testCustomEventButton {
    
    //[MCLabel label:@"testCustomEventButton"];
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Trigger Custom Event"] tap];
}

- (void)testEventWithProperties {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Trigger Event w/ Props"] tap];
}

- (void)testCrashButton {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Trigger Crash"] tap];
    [app.buttons[@"Trigger Crash"] tap];
    //[MCLabel label:@"After clicking crash button"];
}

@end
