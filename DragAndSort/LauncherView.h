//
//  LauncherView.h
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LauncherViewDataSource.h"
#import "LauncherViewDelegate.h"

@interface LauncherView : UIView
{
    UIScrollView    *_scrollView;
    NSMutableArray  *_launcherButtons; //array of LauncherButton array
    
    NSMutableArray  *_launcherItems; //array of LauncherItem array;
    
    NSInteger        _columnCount;
    
    BOOL             _editing;
    BOOL             _editable;
    
    NSObject<LauncherViewDelegate>    *_delegate;
    NSObject<LauncherViewDataSource>  *_dataSource;
}

@property (nonatomic, readonly) BOOL        editing;
@property (nonatomic, assign)   BOOL        editable;

@property (nonatomic, assign)   NSInteger   columnCount;
@property (nonatomic, readonly) NSInteger   rowCount;
@property (nonatomic, readonly) NSInteger   currentPageIndex;

@property (nonatomic, assign) IBOutlet  NSObject<LauncherViewDelegate>      *delegate;
@property (nonatomic, assign) IBOutlet  NSObject<LauncherViewDataSource>    *dataSource;

@end
