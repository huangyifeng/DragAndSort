//
//  LauncherButton.m
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "LauncherButton.h"
#import "NSSafelyRelease.h"

@interface LauncherButton ()

@property (nonatomic, retain)UILongPressGestureRecognizer *_longPressGest;

@end

@implementation LauncherButton

@synthesize item        = _item;
@synthesize closeButton = _closeButton;
@synthesize editing     = _editing;
@synthesize dragging    = _dragging;
@synthesize _longPressGest = _longPressGest;

- (void)dealloc
{
    RELEASE_SAFELY(_item);
    RELEASE_SAFELY(_closeButton);
    RELEASE_SAFELY(_longPressGest);
    [super dealloc];
}

#pragma mark - init

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
//        self._longPressGest = [UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(<#selector#>)
    }
    return self;
}

- (id)initWithItem:(LauncherItem *)item
{
    self = [super init];
    if (self)
    {
        _item = [item retain];
    }
    return self;
}

#pragma mark - public



@end
