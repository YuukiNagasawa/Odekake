//
//  SpotDetailService.h
//  Odekake
//
//  Created by 長澤優希 on 2015/09/11.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#ifndef Odekake_SpotDetailService_h
#define Odekake_SpotDetailService_h

#import <UIKit/UIKit.h>

@interface SpotDetailService : UIViewController

+(NSDictionary*)loadData:(NSInteger)spotId;

@end


#endif
