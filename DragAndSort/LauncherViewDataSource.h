//
//  LauncherViewDataSource.h
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-30.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LauncherButton.h"
@class LauncherView;

@protocol LauncherViewDataSource <NSObject>

@required
- (NSInteger)numberOfPageInLauncherView:(LauncherView *)launcherVew;
- (NSInteger)numberOfColumnInLauncherView:(LauncherView *)launcherView;

- (LauncherButton *)launcherView:(LauncherView *)launcherView 
    buttonForPositionAtIndexPath:(NSIndexPath *)indexPath;

@optional

#pragma mark - reorder

- (void)launcherVew:(LauncherView *)launcherVew moveItemAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath;


@end
