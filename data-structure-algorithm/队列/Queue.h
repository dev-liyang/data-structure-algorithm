//
//  Queue.h
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/13.
//  Copyright © 2019 yang. All rights reserved.
//
//  队列
//  使用双向链表实现，因为队列要对首尾进行操作，因为双向链表能对首尾操作时达到O(1)的时间复杂度，故选用双向链表来实现

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Queue : NSObject

/// 将一个元素放入队列的尾部。
- (void)push:(id)val;

/// 从队列首部移除元素。
- (id)pop;

/// 返回队列首部的元素。
- (id)peek;

/// 返回队列是否为空。
- (BOOL)isEmpty;

/// 返回队列元素的个数
- (NSInteger)size;

/// 清空队列
- (void)clear;

@end

NS_ASSUME_NONNULL_END
