//
//  UIVIew+Util.m
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-31.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "UIVIew+Util.h"

@implementation UIView (Util)

- (void)removeAllSubviews
{
    NSArray *subviews = [self subviews];
    while (0 < subviews.count)
    {
        UIView * subview = subviews.lastObject;
        [subview removeFromSuperview];
    }
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

@end
