//
//  PlanDetailViewController.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/09.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "PlanDetailViewController.h"
#import "PlanDetailTableViewCell.h"

@interface PlanDetailViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation PlanDetailViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    _tableView.delegate=self;
    _tableView.dataSource=self;
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    PlanDetailTableViewCell * cell = [_tableView dequeueReusableCellWithIdentifier: @"PlanDetailTableViewCell"forIndexPath:indexPath];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self performSegueWithIdentifier:@"spotDetailSegue" sender:[_tableView cellForRowAtIndexPath:indexPath]];
}

@end