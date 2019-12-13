//
//  DoubleLinkedList.m
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/6.
//  Copyright © 2019 yang. All rights reserved.
//

#import "DoubleLinkedList.h"

@interface DoubleLinkedList ()

/// 虚拟头节点
@property (nonatomic, strong, nullable) DoubleListNode *first;

/// 虚拟尾节点
@property (nonatomic, strong, nullable) DoubleListNode *last;

@end

@implementation DoubleLinkedList
{
    int _size;
}

/// 添加节点
- (void)add:(id)value{
    [self insert:value ofIndex:_size];
}

/// 插入节点-index
- (void)insert:(id)value ofIndex:(int)index{
    
    if (index > _size || index < 0) {
        return;
    }
    
    if (_first == nil) {
        _first = [DoubleListNode new];
    }
    if (_last == nil) {
        _last = [DoubleListNode new];
    }
    
    // 找到index的上一个节点
    DoubleListNode *prevNode = [self getNodeOfIndex:index-1];
    
    // 找到index的下一个节点，注意没有+1，未插入前，index就是插入后的下一个节点
    DoubleListNode *nextNode = [self getNodeOfIndex:index];
    
    // new一个节点
    DoubleListNode *node = [[DoubleListNode alloc] initWithValue:value];
    
    node.next = nextNode;//新节点的next指向下一个节点
    node.prev = prevNode;//新节点的prev指向上一个节点
    
    // 首尾添加需要特殊处理
    if (index == _size) {
        node.next = nil;
    }
    if (index == 0) {
        node.prev = nil;
    }
    
    prevNode.next = node; //上一个节点的next指向新节点
    nextNode.prev = node; //下一个节点的prev指向新节点
    
    _size ++;
}

/// 删除节点-index
- (void)deleteOfIndex:(int)index{
    
    if (index >= _size || index < 0) {
        return;
    }
    
    // 找到index的上一个节点
    DoubleListNode *prevNode = [self getNodeOfIndex:index-1];
    
    // 找到index的下一个节点
    DoubleListNode *nextNode = [self getNodeOfIndex:index+1];
    
    // 将上一个的next直接指向下一个节点就OK了
    prevNode.next = prevNode.next.next;
    nextNode.prev = nextNode.prev.prev;
    
    _size -- ;
}

/// 获取index节点的值
- (id)getOfIndex:(int)index{
    return [self getNodeOfIndex:index].value;
}

#pragma mark - private method
/// 获取index位置的节点
- (DoubleListNode *)getNodeOfIndex:(int)index{
    
    if (index > _size || index < -1) {
        return nil;
    }
    
    DoubleListNode *node = nil;
    if (index < _size/2) { //从first往后开始遍历查找
        node = _first; // index = -1
        for (int i = 0; i <= index; i ++) {
            node = node.next;
        }
    } else {//从last往前开始遍历查找
        node = _last; // index = _size
        for (int i = _size-1; i >= index; i --) {
            node = node.prev;
        }
    }
    
    return node;
}

/// 返回链表是否为空
- (BOOL)isEmpty{
    return _size == 0;
}

/// 清空链表
- (void)clear{
    _first.next = nil;
    _first = nil;
}

/// 打印链表
- (void)printfLinedList{
    NSMutableString *listStr = [NSMutableString string];
    NSMutableString *detailListStr = [NSMutableString string];
    DoubleListNode *node = self.first.next;
    while (node != nil) {

        [listStr appendFormat:@"%@->", node.value];
        
        [detailListStr appendString:@"["];
        [detailListStr appendFormat:@"%@ %@ %@", node.prev.value, node.value, node.next.value];
        [detailListStr appendString:@"] -> "];
        node = node.next;
    }
    [listStr appendFormat:@"null"];
    [detailListStr appendFormat:@"null"];
    
    NSLog(@"\n%@\n%@", listStr, detailListStr);
    printf("\n");
}

@end
