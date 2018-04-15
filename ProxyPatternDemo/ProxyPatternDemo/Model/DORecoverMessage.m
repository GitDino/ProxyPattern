//
//  DORecoverMessage.m
//  ProxyPatternDemo
//
//  Created by 魏欣宇 on 2018/4/15.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORecoverMessage.h"

@implementation DORecoverMessage

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


- (void)recoverMessage:(NSArray *) parameter_array
{
    NSLog(@"回收中心：---%@", parameter_array);
}

@end
