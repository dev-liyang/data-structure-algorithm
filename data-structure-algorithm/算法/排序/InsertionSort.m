//
//  InsertionSort.m
//  data-structure-algorithm
//
//  Created by liyang on 2020/3/29.
//  Copyright © 2020 yang. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

//- (NSArray *)sort:(NSArray<NSNumber *> *)array {
//    self.resultArr = [NSMutableArray arrayWithArray:array];
//
//    for (int i = 1; i < self.resultArr.count; i ++) {
//        for (int j = i; j > 0; j --) {
//            if ([self compare:j endIndex:j - 1] < 0) {
//                [self exchange:j index2:j - 1];
//            }
//        }
//    }
//
//    return [NSArray arrayWithArray:self.resultArr];
//}

// 优化
- (NSArray *)sort:(NSArray<NSNumber *> *)array {
    self.resultArr = [NSMutableArray arrayWithArray:array];

    for (int i = 1; i < self.resultArr.count; i ++) {
        for (int j = i; j > 0; j --) {
            if ([self compare:j endIndex:j - 1] > 0 && j == i) {
                break;
            }
            if ([self compare:j endIndex:j - 1] < 0) {
                [self exchange:j index2:j - 1];
            }
        }
    }

    return [NSArray arrayWithArray:self.resultArr];
}

@end
