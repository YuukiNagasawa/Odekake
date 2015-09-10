//
//  SearchViewController.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()
@property (weak, nonatomic) IBOutlet UITextField *keyWordTextField;

@end

@implementation SearchViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    
}
- (IBAction)searchBtn:(id)sender {
    
    [_delegate searchFor:_keyWordTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
