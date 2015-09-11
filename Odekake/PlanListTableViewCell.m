//
//  PlanListTableViewCell.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/09.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "PlanListTableViewCell.h"

@interface PlanListTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *planName;

@property(nonatomic)NSInteger planId;
@end

@implementation PlanListTableViewCell

-(void)setData:(NSDictionary *)data{
    _planName.text=data[@"name"];
    _planId=[data[@"id"] integerValue];
}


@end
