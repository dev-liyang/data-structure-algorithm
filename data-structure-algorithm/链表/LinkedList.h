//
//  LinkedList.h
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/3.
//  Copyright © 2019 yang. All rights reserved.
//
// 单链表

#import <Foundation/Foundation.h>
#import "ListNode.h"

NS_ASSUME_NONNULL_BEGIN

// 链表
@interface LinkedList : NSObject

/// 添加节点
- (void)add:(id)value;

/// 插入节点-index
- (void)insert:(id)value ofIndex:(int)index;

/// 删除节点-index
- (void)deleteOfIndex:(int)index;

/// 获取index节点的值
- (id)getOfIndex:(int)index;

/// 返回链表元素的个数
- (NSInteger)size;

/// 返回队列是否为空。
- (BOOL)isEmpty;

/// 打印链表
- (void)printfLinedList;

@end

NS_ASSUME_NONNULL_END
