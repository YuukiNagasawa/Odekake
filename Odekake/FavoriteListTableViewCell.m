//
//  FavoriteListTableViewCell.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "FavoriteListTableViewCell.h"

@interface FavoriteListTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *favoriteListImg;

@property (weak, nonatomic) IBOutlet UILabel *favoriteListLabel;

@end

@implementation FavoriteListTableViewCell

-(void)setData:(NSDictionary *)data{
    _favoriteListLabel.text=data[@"name"];
}

@end