//
//  DORootVC.m
//  ProxyPatternDemo
//
//  Created by 魏欣宇 on 2018/4/15.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORootVC.h"
#import "DOCustomProxy.h"

@interface DORootVC ()<DOCustomProtocol>

@end

@implementation DORootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"代理模式";
    self.view.backgroundColor = [UIColor redColor];
    
    DOCustomProxy *custom_proxy = [DOCustomProxy alloc];
    custom_proxy.delegate = self;
}

#pragma mark - DOCustomProtocol协议方法
- (void)doSomething
{
    NSLog(@"DORootVC：这就是真相！");
}

@end
