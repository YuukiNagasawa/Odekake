//
//  PlanDetailTableViewCell.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/09.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "PlanDetailTableViewCell.h"
#import "Constants.h"

@interface PlanDetailTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *spotNameImg;

@property (weak, nonatomic) IBOutlet UILabel *planDetailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *spotImg;

@end

@implementation PlanDetailTableViewCell

-(void)setData:(NSDictionary *)data{
    _planDetailLabel.text=data[@"name"];
    _spotId = [data[@"id"] integerValue];
    
    NSString *url = [NSString stringWithFormat:@"%@%@", kImageDomain, data[@"imageurl"]];
    NSURL *myURL = [NSURL URLWithString:url];
    NSData *myData = [NSData dataWithContentsOfURL:myURL];
    UIImage *myImage = [UIImage imageWithData:myData];
    _spotImg.image = myImage;
}


@end


