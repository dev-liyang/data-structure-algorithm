//
//  BubbleSort2.m
//  data-structure-algorithm
//
//  Created by liyang on 2020/3/24.
//  Copyright © 2020 yang. All rights reserved.
//

#import "BubbleSort2.h"

@implementation BubbleSort2

// 冒泡排序优化1:对于已经排序好的数据，在第一轮遍历比较时，如果发现没有交换，证明是排序好的，直接返回
- (NSArray *)sort:(NSArray<NSNumber *> *)array {
    self.resultArr = [NSMutableArray arrayWithArray:array];

    for (NSInteger i = self.resultArr.count - 1; i > 0; i --) {
        BOOL isSorted = YES;
        for (NSInteger j = 0; j < i; j ++) {
            if ([self compare:j endIndex:j+1] > 0) {
                NSNumber *tmp = self.resultArr[j];
                self.resultArr[j] = self.resultArr[j+1];
                self.resultArr[j+1] = tmp;
                isSorted = NO;
            }
        }
        if (isSorted) {
            break;
        }
    }
    
    return [NSArray arrayWithArray:self.resultArr];
}

@end
