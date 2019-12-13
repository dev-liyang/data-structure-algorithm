//
//  LinkedList.m
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/3.
//  Copyright © 2019 yang. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedList ()

/// 虚拟头节点 index = -1
@property (nonatomic, strong, nullable) ListNode *head;

@end

@implementation LinkedList
{
    int _size;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _head = [[ListNode alloc] initWithValue:nil]; //虚拟头结点不设置值
    }
    return self;
}

/// 添加节点
- (void)add:(id)value{
    [self insert:value ofIndex:_size];
}

/// 插入节点
- (void)insert:(id)value ofIndex:(int)index{
    
    if (index > _size || index < 0) {
        return;
    }

    // 想插入，得先找到index的上一个节点
    ListNode *prevNode = [self getNodeOfIndex:index-1];
    
    // new一个节点
    ListNode *node = [[ListNode alloc] initWithValue:value];
    node.next = prevNode.next;//新节点的next指向下一个节点
    
    prevNode.next = node; //上一个节点的next指向这个新节点
    
    _size ++;
    
}

/// 删除节点-index
- (void)deleteOfIndex:(int)index{
    
    if (index >= _size || index < 0) {
        return;
    }
    
    // 先找到index的上一个节点
    ListNode *prevNode = [self getNodeOfIndex:index-1];
    
    // 将上一个的next直接指向下一个节点就OK了
    prevNode.next = prevNode.next.next;
    
    _size -- ;
}

/// 获取index节点的值
- (id)getOfIndex:(int)index{
    return [self getNodeOfIndex:index].value;
}

#pragma mark - private method
/// 获取index位置的节点
- (ListNode *)getNodeOfIndex:(int)index{
    
    if (index >= _size || index < -1) {
        return nil;
    }
    
    ListNode *node = _head; // 当index = -1, 虚拟头结点
    for (int i = 0; i <= index; i ++) {
        node = node.next;
    }
    
    return node;
}

- (NSInteger)size{
    return _size;
}

/// 返回队列是否为空
- (BOOL)isEmpty{
    return _size == 0;
}

- (void)clear{
    _head = nil;
}

/// 打印链表
- (void)printfLinedList{
    NSMutableString *listStr = [NSMutableString string];
    ListNode *node = self.head.next;
    while (node != nil) {
        [listStr appendFormat:@"%@->", node.value];
        node = node.next;
    }
    [listStr appendFormat:@"null"];
    NSLog(@"\n%@", listStr);
    printf("\n");
}

@end
