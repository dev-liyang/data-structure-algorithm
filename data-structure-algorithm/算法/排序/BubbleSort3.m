//
//  BubbleSort3.m
//  data-structure-algorithm
//
//  Created by liyang on 2020/3/24.
//  Copyright © 2020 yang. All rights reserved.
//

#import "BubbleSort3.h"

@implementation BubbleSort3

// 冒泡排序优化2:对于序列尾部已经局部有序，可记录最后一次交换的位置，减少比较次数
- (NSArray *)sort:(NSArray<NSNumber *> *)array {
    self.resultArr = [NSMutableArray arrayWithArray:array];

    for (NSInteger i = self.resultArr.count - 1; i > 0; i --) {
        NSInteger sortIndex = 1;
        for (NSInteger j = 0; j < i; j ++) {
            if ([self compare:j endIndex:j+1] > 0) {
                NSNumber *tmp = self.resultArr[j];
                self.resultArr[j] = self.resultArr[j+1];
                self.resultArr[j+1] = tmp;
                sortIndex = j+1;
            }
        }
        i = sortIndex;
    }
    
    return [NSArray arrayWithArray:self.resultArr];
}

@end
