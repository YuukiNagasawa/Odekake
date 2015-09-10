//
//  ExecutionHistoryListTableViewCell.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "ExecutionHistoryListTableViewCell.h"

@interface ExecutionHistoryListTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *ExecutionHistoryListLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLable;

@end

@implementation ExecutionHistoryListTableViewCell

-(void)setData:(NSDictionary *)data{
    _ExecutionHistoryListLabel.text= data[@"name"];
    _dateLable.text=data[@"date"];
    
    
}

@end
