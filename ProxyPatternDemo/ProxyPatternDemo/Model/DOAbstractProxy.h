//
//  DOAbstractProxy.h
//  ProxyPatternDemo
//
//  Created by 魏欣宇 on 2018/4/15.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DOAbstractProxy : NSProxy

@property (nonatomic, weak) id delegate;

@end
