//
//  LauncherItem.h
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LauncherItem : NSObject
{
@private
    NSString    *_title;
    NSString    *_image;
    NSString    *_identity;
    
    NSString    *_badgeValue;
    BOOL         _canDelete;
    id           _userInfo;
}

@property (nonatomic, copy) NSString    *title;
@property (nonatomic, copy) NSString    *image;
@property (nonatomic, copy) NSString    *identity;

@property (nonatomic, assign) NSInteger  badgeNumber;
@property (nonatomic, copy) NSString    *badgeValue;
@property (nonatomic, assign) BOOL       canDelete;
@property (nonatomic, retain) id         userInfo;

- (id)initWithTitle:(NSString *)title image:(NSString *)image identity:(NSString *)identity;
- (id)initWithTitle:(NSString *)title image:(NSString *)image identity:(NSString *)identity
          canDelete:(BOOL)canDelete;

@end
