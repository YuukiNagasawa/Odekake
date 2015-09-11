//
//  SpotDetailViewController.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "SpotDetailViewController.h"
#import "PlanDetailViewController.h"
#import "PlanDetailTableViewCell.h"
#import "SpotDetailService.h"
#import "Constants.h"

@interface SpotDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *spotImg;
@property (weak, nonatomic) IBOutlet UITextView *spotCommentTextView;
@property(nonatomic)NSDictionary*spotDetail;

@end

@implementation SpotDetailViewController


-(void)setData:(NSDictionary *)data{
    _spotCommentTextView.text=data[@"comment"];
    NSString *url = [NSString stringWithFormat:@"%@%@", kImageDomain, data[@"imageurl"]];
    NSURL *myURL = [NSURL URLWithString:url];
    NSData *myData = [NSData dataWithContentsOfURL:myURL];
    UIImage *myImage = [UIImage imageWithData:myData];
    _spotImg.image = myImage;
    
    MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake([data[@"latitude"]floatValue], [data[@"longitude"]floatValue]);
    [_spotMapView setRegion:MKCoordinateRegionMake(center, span) animated:NO];
    
    //Pinの設定
    MKPointAnnotation* tt = [[MKPointAnnotation alloc] init];
    tt.coordinate = center;
    [_spotMapView addAnnotations:@[tt]];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    NSLog(@"%ld",(long)_spotId);
    
    _spotDetail =[SpotDetailService loadData:_spotId];
    
    
    
    
    //_spotImg.image=[ ];
    
    [self setData:_spotDetail[@"Spot"]];
    
    
}


@end