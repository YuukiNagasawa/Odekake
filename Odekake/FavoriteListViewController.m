//
//  FavoriteListViewController.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "FavoriteListViewController.h"
#import "FavoriteListTableViewCell.h"

@interface FavoriteListViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation FavoriteListViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    
    _tableview.delegate=self;
    _tableview.dataSource=self;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FavoriteListTableViewCell * cell = [_tableview dequeueReusableCellWithIdentifier:@"FavoriteListTableViewCell" forIndexPath:indexPath];
    
    return cell;
}

@end