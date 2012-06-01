//
//  LauncherView.m
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "LauncherView.h"
#import "NSSafelyRelease.h"
#import "UIVIew+Util.h"

static const CGFloat k_Default_Top_Margin = 20.0f;
static const CGFloat k_Default_Side_Margin = 20.0f;
static const CGFloat k_Default_Vertical_Gap = 10.f;
static const CGFloat k_Default_Horizontal_Gap = 10.0f;

@interface LauncherView ()

- (void)layoutButtons;
- (void)createButtons;


@property (nonatomic, retain) UIScrollView  *_scrollView;
@property (nonatomic, retain) NSMutableArray       *_launcherButtons;
@property (nonatomic, retain) NSMutableArray       *_launcherItems;

@end

@implementation LauncherView

@synthesize _scrollView     = _scrollView;

@synthesize editable        = _editable;
@synthesize editing         = _editing;
@synthesize columnCount     = _columnCount;

@synthesize _launcherButtons = _launcherButtons;
@synthesize _launcherItems  = _launcherItems;

//@synthesize delegate        = _delegate;
//@synthesize dataSource      = _dataSource;

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

#pragma mark - override

- (void)layoutSubviews
{
    if (!self._launcherButtons)
    {
        [self createButtons];
    }
}

- (void)createButtons
{
    self._launcherButtons = [NSMutableArray arrayWithCapacity:self._launcherItems.count];
    for (NSArray *pageItems in self._launcherItems)
    {
        NSMutableArray *buttonPage = [NSMutableArray arrayWithCapacity:pageItems.count];
        [self._launcherButtons addObject:buttonPage];
        
        for (LauncherItem *item in pageItems)
        {
            LauncherButton *button = [[[LauncherButton alloc] initWithItem:item] autorelease];
            [buttonPage addObject:button];
        }
    }
}

#pragma mark - private

- (void)layoutButtons
{
    [self layoutIfNeeded];
    [self._scrollView removeAllSubviews];
    
    for (int pageIndex = 0; pageIndex < self._launcherButtons.count; pageIndex++)
    {
        NSArray *pageButtons = [self._launcherButtons objectAtIndex:pageIndex];
        for (int position = 0; position < pageButtons.count; position++) 
        {
            LauncherButton *button = [pageButtons objectAtIndex:position];
            if (!button.dragging) 
            {
                button.transform = CGAffineTransformIdentity;
            }
            int row = position / self.columnCount;
            int column = position % self.columnCount;
            
            int x = pageIndex * self.width + _sideMargin + column * (button.width + _hGap);
            int y = _topMargin + row * (button.height + _vGap);
            CGRect frame = button.frame;
            frame.origin = CGPointMake(x, y);
            button.frame = frame;
        }
    }
}




#pragma mark - public

- (NSInteger)rowCount
{
    return 1;
}

- (NSInteger)currentPageIndex
{
    return 1;
}


@end
