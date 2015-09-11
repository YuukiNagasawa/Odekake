//
//  SpotDetailService.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/11.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "SpotDetailService.h"
#import "Constants.h"

#define kSpotDetailJsonPath @"/spot_detail.json"

@interface SpotDetailService()

@end

@implementation SpotDetailService

+(NSDictionary*)loadData:(NSInteger)spotId{
    
    NSString * url = [NSString stringWithFormat:@"%@%@?id=%ld",kAPIDomain,kSpotDetailJsonPath,spotId];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    NSData * json = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:json options:NSJSONReadingAllowFragments error:nil];
    
    return dictionary[@"posts"];
}

@end
