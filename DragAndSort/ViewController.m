//
//  ViewController.m
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "ViewController.h"
#import "NSSafelyRelease.h"

@implementation ViewController

@synthesize launcherView = _launcherView;

- (void)dealloc
{
    RELEASE_SAFELY(_launcherView);
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    LauncherItem *item1 = [[LauncherItem alloc] initWithTitle:@"Schedule" image:@"schedule" identity:@"grn.schedule"];
    LauncherItem *item2 = [[LauncherItem alloc] initWithTitle:@"Message" image:@"message" identity:@"grn.message"];
    LauncherItem *item3 = [[LauncherItem alloc] initWithTitle:@"Setting" image:@"setting" identity:@"kunai.setting"];
    
    self.launcherView.launcherItems = [NSArray arrayWithObjects:
                                       [NSArray arrayWithObjects:item1,item2, nil],
                                       [NSArray arrayWithObjects:item3, nil],
                                       nil];
}


@end
