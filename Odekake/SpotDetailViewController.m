//
//  SpotDetailViewController.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "SpotDetailViewController.h"

@interface SpotDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *spotImg;
@property (weak, nonatomic) IBOutlet UITextView *spotCommentTextView;
@property(nonatomic)NSDictionary*spotDetail;

@end

@implementation SpotDetailViewController


-(void)setData:(NSDictionary *)data{
    _spotCommentTextView.text=data[@"comment"];
    
    NSURL *myURL = [NSURL URLWithString:data[@"image_url"]];
    NSData *myData = [NSData dataWithContentsOfURL:myURL];
    UIImage *myImage = [UIImage imageWithData:myData];
    _spotImg.image = myImage;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    _spotDetail =@{@"image_url":@"http://fujifilm.jp/personal/digitalcamera/x/fujinon_lens_xf16mmf14_r_wr/sample_images/img/index/ff_xf16mmf14_r_wr_004.JPG",@"comment":@"やっほーい",@"latitude":@"9084838",@"longitude":@"87862734"};
    
    
    //_spotImg.image=[ ];
    
    [self setData:_spotDetail];
    
    MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(35.682736, 139.779722);
    [_spotMapView setRegion:MKCoordinateRegionMake(center, span) animated:NO];
    
    //Pinの設定
    MKPointAnnotation* tt = [[MKPointAnnotation alloc] init];
    tt.coordinate = CLLocationCoordinate2DMake(35.655333, 139.748611);
    [_spotMapView addAnnotations:@[tt]];
}


@end