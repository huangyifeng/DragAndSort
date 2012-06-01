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

@property (nonatomic, retain)UILongPressGestureRecognizer   *_longPressGest;
@property (nonatomic, retain)UIPanGestureRecognizer         *_panGest;

- (void)_handleLongPress:(UILongPressGestureRecognizer *)longPress;
- (void)_handlePane:(UIPanGestureRecognizer *)pan;
- (void)initView;

@end

@implementation LauncherButton

@synthesize item        = _item;
@synthesize closeButton = _closeButton;
@synthesize editing     = _editing;
@synthesize dragging    = _dragging;
@synthesize _longPressGest  = _longPressGest;
@synthesize _panGest        = _panGest;

- (void)dealloc
{
    RELEASE_SAFELY(_item);
    RELEASE_SAFELY(_closeButton);
    RELEASE_SAFELY(_longPressGest);
    RELEASE_SAFELY(_panGest);
    [super dealloc];
}

#pragma mark - init

- (void)initView
{
    self._longPressGest = [[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(_handleLongPress:)] autorelease];
    self._panGest = [[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(_panGest)] autorelease];
    self.titleLabel.text = _item.title;
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

#pragma mark - private

- (void)_handleLongPress:(UILongPressGestureRecognizer *)longPress
{
    if (!self.editing)
    {
        self.editing = YES;
    }
}

- (void)_handlePane:(UIPanGestureRecognizer *)pan
{
    if (self.editing && UIGestureRecognizerStateChanged == pan.state)
    {
        CGPoint trans = [pan translationInView:self.superview];
        self.center = CGPointMake(pan.view.center.x + trans.x, pan.view.center.y + trans.y);
        [pan setTranslation:CGPointMake(0, 0) inView:self.superview];
    }
}

#pragma mark - public

- (void)setEditing:(BOOL)editing
{
    if (_editing != editing)
    {
        _editing = editing;
        
        if (editing)
        {
            //@TODO: add close button
        }
        else
        {
            //@TODO: remove close button
        }
    }
}

- (void)setDragging:(BOOL)dragging
{
    if (_dragging != dragging)
    {
        _dragging = dragging;
        if (dragging)
        {
            self.transform = CGAffineTransformMakeScale(1.5, 1.5);
            self.alpha = 0.7;
        }
        else
        {
            self.transform = CGAffineTransformIdentity;
            self.alpha = 1;
        }
    }
}


@end
