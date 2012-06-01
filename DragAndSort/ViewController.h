//
//  ViewController.h
//  DragAndSort
//
//  Created by Huang YiFeng on 12-5-28.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LauncherView.h"
#import "LauncherItem.h"

@interface ViewController : UIViewController
{
    LauncherView    *_launcherView;
}

@property(nonatomic, retain)IBOutlet LauncherView *launcherView;

@end

