//
//  PlanDetailService.h
//  Odekake
//
//  Created by 長澤優希 on 2015/09/11.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#ifndef Odekake_PlanDetailService_h
#define Odekake_PlanDetailService_h

#import<UIKit/UIKit.h>

@interface PlanDetailService : UIViewController

+(NSDictionary*)loadData:(NSInteger)planId;

@end


#endif
