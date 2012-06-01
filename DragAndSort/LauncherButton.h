//
//  LauncherButton.h
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LauncherItem.h"

@interface LauncherButton : UIButton
{
    UIButton        *_closeButton;
    UILabel         *_badge;
    LauncherItem    *_launcherItem;
    
    BOOL             _dragging;
    BOOL             _editing;
    
    UILongPressGestureRecognizer *_longPressGest;
    UIPanGestureRecognizer       *_panGest;
}

@property (nonatomic, readonly) LauncherItem  *item;
@property (nonatomic, readonly) UIButton      *closeButton;
@property (nonatomic, assign)   BOOL           dragging;
@property (nonatomic, assign)   BOOL           editing; 

- (id)initWithItem:(LauncherItem *)item;

@end
