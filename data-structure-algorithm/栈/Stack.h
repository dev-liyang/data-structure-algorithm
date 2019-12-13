//
//  Stack.h
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/3.
//  Copyright © 2019 yang. All rights reserved.
//
// 栈

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Stack : NSObject

/// 将一个元素放入栈的顶部。
- (void)push:(id)val;

/// 从栈顶弹出元素
- (id)pop;

/// 返回栈顶元素。
- (id)peek;

/// 返回栈是否为空。
- (BOOL)isEmpty;

/// 返回栈元素的个数
- (NSInteger)size;

/// 清空栈
- (void)clear;

@end

NS_ASSUME_NONNULL_END
