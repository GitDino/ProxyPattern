//
//  DOAbstractObject.h
//  ProxyPatternDemo-1
//
//  Created by 魏欣宇 on 2018/4/15.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DOAbstractObject : NSObject

@property (nonatomic, weak) id delegate;

@end
