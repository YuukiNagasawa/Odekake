//
//  PlanDetailService.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/11.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "PlanDetailService.h"
#import "Constants.h"
#define kPlanDetailJsonPath @"spot_name.json"


@interface PlanDetailService ()

@end

@implementation PlanDetailService

+(NSDictionary*)loadData{
    
    NSString*url = [NSString stringWithFormat:@"%@%@",kAPIDomain,kPlanDetailJsonPath];
    
    NSURLRequest*request=[NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    
   NSData *json = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    NSDictionary*dictionary=[NSJSONSerialization JSONObjectWithData:json options:NSJSONReadingAllowFragments error:nil];
    
    return dictionary;
    
}

@end
