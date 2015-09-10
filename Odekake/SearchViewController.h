//
//  SearchViewController.h
//  Odekake
//
//  Created by 長澤優希 on 2015/09/10.
//  Copyright (c) 2015年 長澤優希. All rights reserved.
//

#ifndef Odekake_SearchViewController_h
#define Odekake_SearchViewController_h

#import<UIKit/UIKit.h>
#import "SearchProtocol.h"

@interface SearchViewController : UIViewController

@property(weak,nonatomic) id<SearchProtocol> delegate;

@end
#endif
