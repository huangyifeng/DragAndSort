//
//  LauncherItem.m
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "LauncherItem.h"
#import "NSSafelyRelease.h"

@implementation LauncherItem

@synthesize title       = _title;
@synthesize image       = _image;
@synthesize identity    = _identity;
@synthesize badgeValue  = _badgeValue;
@synthesize canDelete   = _canDelete;
@synthesize userInfo    = _userInfo;

- (void)dealloc
{
    RELEASE_SAFELY(_title);
    RELEASE_SAFELY(_image);
    RELEASE_SAFELY(_identity);
    RELEASE_SAFELY(_badgeValue);
    RELEASE_SAFELY(_userInfo);
    [super dealloc];
}

#pragma mark - init

- (id)initWithTitle:(NSString *)title image:(NSString *)image identity:(NSString *)identity
{
    self = [super init];
    if (self)
    {
        self.title = title;
        self.image = image;
        self.identity = identity;
    }
    return self;
}

- (id)initWithTitle:(NSString *)title image:(NSString *)image identity:(NSString *)identity canDelete:(BOOL)canDelete
{
    self = [super init];
    if (self)
    {
        self.title = title;
        self.image = image;
        self.identity = identity;
        self.canDelete =canDelete;
    }
    return self;
}

#pragma mark - public

- (NSInteger)badgeNumber
{
    return [self.badgeValue integerValue];
}
    
- (void)setBadgeNumber:(NSInteger)badgeNumber
{
    if (0 == badgeNumber) 
    {
        self.badgeValue = nil;
    }
    else
    {
        self.badgeValue = [NSString stringWithFormat:@"%d",badgeNumber];
    }
}

@end
