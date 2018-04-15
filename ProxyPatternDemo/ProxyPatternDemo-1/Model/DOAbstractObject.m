//
//  DOAbstractObject.m
//  ProxyPatternDemo-1
//
//  Created by 魏欣宇 on 2018/4/15.
//  Copyright © 2018年 Dino. All rights reserved.
//
#import <objc/message.h>
#import "DOAbstractObject.h"
#import "DORecoverMessage.h"

@implementation DOAbstractObject

#pragma mark - 主要方法
- (nullable NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    if ([self.delegate respondsToSelector:sel])
    {
        return [self.delegate methodSignatureForSelector:sel];
    }
    else
    {
        DORecoverMessage *recover_message = [DORecoverMessage sharedInstance];
        return [recover_message methodSignatureForSelector:NSSelectorFromString(@"recoverMessage:")];
    }
}


- (void)forwardInvocation:(NSInvocation *)invocation
{
    SEL selector = [invocation selector];
    
    if ([self.delegate respondsToSelector:selector])
    {
        [invocation setTarget:self.delegate];
        
        [invocation invoke];
    }
    else
    {
        NSString *selector_str = NSStringFromSelector(selector);
        
        invocation.selector = NSSelectorFromString(selector_str);
        
        DORecoverMessage *recover_message = [DORecoverMessage sharedInstance];
        
        [invocation setTarget:recover_message];
        
        const char *class_name = class_getName([self class]);
        
        NSArray *parmater_array = nil;
        
        if (self.delegate)
        {
            parmater_array = @[[NSString stringWithUTF8String:(class_name)], selector_str, @"1"];
        }
        else
        {
            parmater_array = @[[NSString stringWithUTF8String:(class_name)], selector_str, @"0"];
        }
        
        [invocation setArgument:&parmater_array atIndex:2];
        
        [invocation invoke];
    }
}

@end
