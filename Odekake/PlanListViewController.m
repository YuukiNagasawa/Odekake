//
//  ViewController.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/09.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//
//

#import "PlanListViewController.h"
#import "PlanListTableViewCell.h"
#import "SearchViewController.h"
#import "PlanListService.h"
@interface PlanListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic)NSArray *planList;

@end

@implementation PlanListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.delegate=self;
    _tableView.dataSource=self;
    
    
    
    _planList = [PlanListService loadData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"searchSegue"]){
        SearchViewController * viewController =segue.destinationViewController;
        
        viewController.delegate=self;
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_planList count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    PlanListTableViewCell * cell =[_tableView dequeueReusableCellWithIdentifier:@"PlanListTableViewCell" forIndexPath:indexPath];
    
    [cell setData:_planList[indexPath.row][@"Plan"]];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self performSegueWithIdentifier:@"onSelectPlanSegue" sender:[_tableView cellForRowAtIndexPath:indexPath]];

}
-(void)searchFor:(NSString *)text{
    NSLog(@"%@",text);
    
}

- (IBAction)favoriteLsitBnt:(id)sender {
    
    [self performSegueWithIdentifier:@"favoriteListSegue" sender:self];
}

- (IBAction)executionHistoryBnt:(id)sender {
    
    [self performSegueWithIdentifier:@"executionHistorySegue" sender:self];
}

- (IBAction)SearchBtn:(id)sender {
    
    [self performSegueWithIdentifier:@"searchSegue" sender:self];
}

@end
