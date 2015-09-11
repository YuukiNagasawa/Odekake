//
//  PlanDetailViewController.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/09.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "PlanDetailViewController.h"
#import "PlanDetailTableViewCell.h"
#import "PlanDetailService.h"
#import "SpotDetailViewController.h"

@interface PlanDetailViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic)NSDictionary*spotList;
@property (weak, nonatomic) IBOutlet UILabel *planNameLabel;


@end

@implementation PlanDetailViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    NSLog(@"%ld",(long)_planId);
    
    _tableView.delegate=self;
    _tableView.dataSource=self;
    
    _spotList = [PlanDetailService loadData:_planId];
    _planNameLabel.text=_spotList[@"Plan"][@"name"];
  
                /*@[
                  @{@"name":@"あああああああああああああああああ",@"img_url":@"http://nekogazou.com/wp-content/uploads/2013/07/0142.jpg"},
                  @{@"name":@"いいいいいいいいいいいいいいいい",@"img_url":@"https://pbs.twimg.com/profile_images/378800000220029324/fe66faeca20115da8566e51d83447ead_400x400.jpeg"},
                  @{@"name":@"ううううううううううううううううう",@"img_url":@"https://pbs.twimg.com/profile_images/378800000743014378/5f9f23464c568dd9e3b1f60156669802_400x400.jpeg"},
                  @{@"name":@"ええええええええええええええええ",@"img_url":@"https://www.google.co.jp/search?q=%E7%94%BB%E5%83%8F&espv=2&biw=1050&bih=699&source=lnms&tbm=isch&sa=X&ved=0CAYQ_AUoAWoVChMIva34h-3rxwIVypmUCh0VbwXv#imgrc=fMTJGyziS8jT9M%3A"},
                  @{@"name":@"おおおおおおおおおおおおおおおお",@"img_url":@"http://nekogazou.com/wp-content/uploads/2013/03/616.jpg"}
                  
                  ];*/
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_spotList[@"PlanSpot"] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    PlanDetailTableViewCell * cell = [_tableView dequeueReusableCellWithIdentifier: @"PlanDetailTableViewCell"forIndexPath:indexPath];
    
    [cell setData:_spotList[@"PlanSpot"][indexPath.row][@"Spot"]];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self performSegueWithIdentifier:@"spotDetailSegue" sender:[_tableView cellForRowAtIndexPath:indexPath]];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqual:@"spotDetailSegue"]){
        
        SpotDetailViewController*viewController = segue.destinationViewController;
        PlanDetailTableViewCell *cell = sender;
        viewController.spotId  = cell.spotId;
        
    }
    
}

@end