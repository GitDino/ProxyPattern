//
//  DORootVC.m
//  ProxyPatternDemo-1
//
//  Created by 魏欣宇 on 2018/4/15.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORootVC.h"
#import "DOCustomObject.h"

@interface DORootVC ()<DOAnotherProtocol>

@end

@implementation DORootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"代理模式";
    self.view.backgroundColor = [UIColor greenColor];
    
    DOCustomObject *custom_object = [[DOCustomObject alloc] init];
    custom_object.delegate = self;
}

#pragma mark - DOAnotherProtocol协议方法
- (void)doAnotherthing
{
    NSLog(@"999999");
}

@end
