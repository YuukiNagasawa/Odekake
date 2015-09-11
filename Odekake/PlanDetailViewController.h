//
//  PlanDetailViewController.h
//  Odekake
//
//  Created by 長澤優希 on 2015/09/09.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#ifndef Odekake_PlanDetailViewController_h
#define Odekake_PlanDetailViewController_h

#import <UIkit/UIKit.h>

@interface PlanDetailViewController: UIViewController<
    UITableViewDelegate,UITableViewDataSource
>

@property(nonatomic)NSInteger planId;

@end


#endif
