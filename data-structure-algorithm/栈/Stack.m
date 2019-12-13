//
//  Stack.m
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/3.
//  Copyright © 2019 yang. All rights reserved.
//

#import "Stack.h"

@interface Stack ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation Stack

- (instancetype)init
{
    self = [super init];
    if (self) {
        _array = [NSMutableArray array];
    }
    return self;
}

/// 将一个元素放入栈的顶部。
- (void)push:(id)val{
    [_array addObject:val];
}

/// 从栈顶弹出元素
- (id)pop{
    if (!_array.count) {
        return nil;
    }
    id obj = [_array lastObject];
    [_array removeLastObject];
    return obj;
}

/// 返回栈顶元素。
- (id)peek{
    if (!_array.count) {
        return nil;
    }
    return [_array lastObject];
}

/// 返回栈是否为空。
- (BOOL)isEmpty{
    return _array.count == 0;
}

/// 返回栈元素的个数
- (NSInteger)size{
    return _array.count;
}

/// 清空栈
- (void)clear{
    [_array removeAllObjects];
}

@end
