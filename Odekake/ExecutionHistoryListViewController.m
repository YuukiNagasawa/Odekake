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

@end

@implementation ExecutionHistoryListViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    _tableview.delegate=self;
    _tableview.dataSource=self;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ExecutionHistoryListTableViewCell * cell=[_tableview dequeueReusableCellWithIdentifier:@"ExecutionHistoryListTableViewCell" forIndexPath:indexPath];
    
    return cell;
    
}
@end
