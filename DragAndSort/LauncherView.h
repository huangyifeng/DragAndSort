//
//  LauncherView.h
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LauncherView : UIView
{
    UIScrollView    *_scrollView;
    NSMutableArray  *_launcherButtons; //array of LauncherButton
    
    NSMutableArray  *_launcherItems; //array of LauncherItem;
    
}

@end
