//
//  BubbleSort.m
//  data-structure-algorithm
//
//  Created by liyang on 2020/3/24.
//  Copyright © 2020 yang. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

- (NSArray *)sort:(NSArray<NSNumber *> *)array {
    self.resultArr = [NSMutableArray arrayWithArray:array];
    
    for (NSInteger i = self.resultArr.count - 1; i > 0; i --) {
        for (NSInteger j = 0; j < i; j ++) {
            if ([self compare:j endIndex:j+1]) {
                NSNumber *tmp = self.resultArr[j];
                self.resultArr[j] = self.resultArr[j+1];
                self.resultArr[j+1] = tmp;
            }
        }
    }
    
    return [NSArray arrayWithArray:self.resultArr];
}

@end
