//
//  PlanListService.m
//  Odekake
//
//  Created by 長澤優希 on 2015/09/11.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#import "PlanListService.h"
#import "Constants.h"
#define kPlanListJsonPath @"/plan_name.json"

@interface PlanListService ()

@end

@implementation PlanListService

+(NSArray *)loadData{
    
    //APIのURLの作成
    NSString *url = [NSString stringWithFormat:@"%@%@",kAPIDomain,kPlanListJsonPath];
    
    //NSURLからNSURLRequestを作る
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    //サーバーとの通信を行う
    NSData *json = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    //JSONをパース
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:json options:NSJSONReadingAllowFragments error:nil];
    
    return dictionary[@"posts"];
}

@end