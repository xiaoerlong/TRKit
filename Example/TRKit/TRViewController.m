//
//  TRViewController.m
//  TRKit
//
//  Created by xiaoerlong on 08/06/2018.
//  Copyright (c) 2018 xiaoerlong. All rights reserved.
//

#import "TRViewController.h"
#import "NSObject+TRVersion.h"
#import "UIButton+Countdown.h"
#import "UIScrollView+TRRefresh.h"

@interface TRViewController ()
@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", [self version]);
    [self.btn countdownWithTime:60 normalTitle:@"获取验证码"];
    [self.scrollView setNormalHeaderWithTarget:self action:@selector(refresh) lastUpdateTimeKey:nil];
    [self.scrollView setNormalFooterWithTarget:self action:@selector(loadMore)];
}

- (void)refresh {
    
}

- (void)loadMore {
    
}

@end
