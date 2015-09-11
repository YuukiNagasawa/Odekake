//
//  SpotDeatilViewController.h
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#ifndef Odekake_SpotDeatilViewController_h
#define Odekake_SpotDeatilViewController_h

#import<UIkit/UIkit.h>
#import<MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface SpotDetailViewController: UIViewController<MKAnnotation>{
    MKPointAnnotation*annotation;
}

@property (weak, nonatomic) IBOutlet MKMapView *spotMapView;
@property (readwrite, nonatomic) CLLocationCoordinate2D coordinate;
@property(nonatomic)NSInteger spotId;

-(void)setData:(NSDictionary*)data;

@end
#endif
