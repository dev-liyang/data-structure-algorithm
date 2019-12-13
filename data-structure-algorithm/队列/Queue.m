//
//  Queue.m
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/13.
//  Copyright © 2019 yang. All rights reserved.
//

#import "Queue.h"
#import "DoubleLinkedList.h"

@implementation Queue
{
    DoubleLinkedList *_list;
    int _size;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _list = [DoubleLinkedList new];
    }
    return self;
}

/// 将一个元素放入队列的尾部。
- (void)push:(id)val{
    [_list add:val];
    _size ++;
}

/// 从队列首部移除元素。
- (id)pop{
    if ([self isEmpty]) {
        return nil;
    }
    id first = [_list getOfIndex:0];
    [_list deleteOfIndex:0];
    _size --;
    return first;
}

/// 返回队列首部的元素。
- (id)peek{
    return [_list getOfIndex:0];
}

/// 返回队列是否为空。
- (BOOL)isEmpty{
    return _size == 0;
}

/// 返回队列元素的个数
- (NSInteger)size{
    return _size;
}

/// 清空队列
- (void)clear{
    [_list clear];
    _list = nil;
    _size = 0;
}

@end
