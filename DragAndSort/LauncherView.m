//
//  LauncherView.m
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "LauncherView.h"
#import "NSSafelyRelease.h"

@interface LauncherView ()

@property (nonatomic, retain) UIScrollView  *_scrollView;

@end

@implementation LauncherView

@synthesize _scrollView     = _scrollView;

@synthesize editable        = _editable;
@synthesize editing         = _editing;
@synthesize columnCount     = _columnCount;

@synthesize delegate        = _delegate;
@synthesize dataSource      = _dataSource;

- (void)dealloc
{
    RELEASE_SAFELY(_scrollView);
    [super dealloc];
}


#pragma mark - life cycle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark - public

- (NSInteger)rowCount
{
    
}

- (NSInteger)currentPageIndex
{
    
}


@end
