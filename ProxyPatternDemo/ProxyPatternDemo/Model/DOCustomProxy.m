//
//  DOCustomProxy.m
//  ProxyPatternDemo
//
//  Created by 魏欣宇 on 2018/4/15.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOCustomProxy.h"

@implementation DOCustomProxy

#pragma mark - 重写父类方法
- (void)setDelegate:(id)delegate
{
    [super setDelegate:delegate];
    
    [self doSomething];
}

@end
