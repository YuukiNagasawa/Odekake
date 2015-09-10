//
//  ExecutionHistoryListViewController.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "ExecutionHistoryListViewController.h"
#import "ExecutionHistoryListTableViewCell.h"

@interface ExecutionHistoryListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property(nonatomic)NSArray*planName;

@end

@implementation ExecutionHistoryListViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    _tableview.delegate=self;
    _tableview.dataSource=self;
    
    _planName=@[
                @{@"date":@"2015.09.10",@"name":@"a"},
                @{@"date":@"2015.09.10",@"name":@"a"},
                @{@"date":@"2015.09.10",@"name":@"a"},
                @{@"date":@"2015.09.10",@"name":@"a"},
                @{@"date":@"2015.09.10",@"name":@"a"}
                ];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_planName count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ExecutionHistoryListTableViewCell * cell=[_tableview dequeueReusableCellWithIdentifier:@"ExecutionHistoryListTableViewCell" forIndexPath:indexPath];
    
    [cell setData:_planName[indexPath.row]];
    
    return cell;
    
}
@end
