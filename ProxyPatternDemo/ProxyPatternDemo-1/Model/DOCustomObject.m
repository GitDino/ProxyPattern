//
//  DOCustomObject.m
//  ProxyPatternDemo-1
//
//  Created by 魏欣宇 on 2018/4/15.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOCustomObject.h"

@implementation DOCustomObject

- (void)setDelegate:(id)delegate
{
    [super setDelegate:delegate];
    
    [self doAnotherthing];
}

@end
