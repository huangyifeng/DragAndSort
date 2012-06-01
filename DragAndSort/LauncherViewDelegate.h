//
//  LauncherViewDelegate.h
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-30.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LauncherView;

@protocol LauncherViewDelegate <NSObject>

@optional
- (CGSize)launcherView:(LauncherView *)launcherView sizeForItemAtIndexPath:(NSIndexPath *)indexPath;
- (CGFloat)topMarginInLauncherView:(LauncherView *)launcherView;
- (CGFloat)sideMarginInLauncherView:(LauncherView *)launcherView;

@end
