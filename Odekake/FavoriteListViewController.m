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
@property(nonatomic)NSArray*palnList;

@end

@implementation FavoriteListViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    
    _tableview.delegate=self;
    _tableview.dataSource=self;
    
    _palnList = @[
                  @{@"name":@"面白いプラン"},
                  @{@"name":@"うきうきプラン"},
                  @{@"name":@"アクティブプラン"},
                  @{@"name":@"悲しいプラン"},
                  @{@"name":@"怖いプラン"},
                  @{@"name":@"びっくりプラン"},
                  @{@"name":@"すごいプラン"},
                  ];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_palnList count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FavoriteListTableViewCell * cell = [_tableview dequeueReusableCellWithIdentifier:@"FavoriteListTableViewCell" forIndexPath:indexPath];
    
    [cell setData:_palnList[indexPath.row]];
    
    return cell;
}

@end