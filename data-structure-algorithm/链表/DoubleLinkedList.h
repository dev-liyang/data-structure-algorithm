//
//  DoubleLinkedList.h
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/6.
//  Copyright © 2019 yang. All rights reserved.
//
// 双向链表

#import <Foundation/Foundation.h>
#import "DoubleListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface DoubleLinkedList : NSObject

/// 添加节点
- (void)add:(id)value;

/// 插入节点-index
- (void)insert:(id)value ofIndex:(int)index;

/// 删除节点-index
- (void)deleteOfIndex:(int)index;

/// 获取index节点的值
- (id)getOfIndex:(int)index;

/// 返回链表是否为空。
- (BOOL)isEmpty;

/// 清空链表
- (void)clear;

/// 打印链表
- (void)printfLinedList;

@end

NS_ASSUME_NONNULL_END
