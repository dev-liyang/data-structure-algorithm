//
//  SelectionSort.m
//  data-structure-algorithm
//
//  Created by liyang on 2020/3/24.
//  Copyright © 2020 yang. All rights reserved.
//

#import "SelectionSort.h"

@implementation SelectionSort

- (NSArray *)sort:(NSArray<NSNumber *> *)array {
    self.resultArr = [NSMutableArray arrayWithArray:array];
    
    for (NSInteger i = self.resultArr.count - 1; i > 0; i --) {
        NSInteger maxIndex = 0;
        for (NSInteger j = 1; j <= i; j ++) {
            if ([self compare:j endIndex:maxIndex] > 0) {
                maxIndex = j;
            }
        }
        NSNumber *tmp = self.resultArr[i];
        self.resultArr[i] = self.resultArr[maxIndex];
        self.resultArr[maxIndex] = tmp;
    }
    
    return [NSArray arrayWithArray:self.resultArr];
    
}

@end
