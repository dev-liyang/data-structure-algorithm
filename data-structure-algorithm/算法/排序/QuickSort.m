//
//  QuickSort.m
//  data-structure-algorithm
//
//  Created by liyang on 2020/11/29.
//  Copyright © 2020 yang. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

- (NSArray *)sort:(NSArray<NSNumber *> *)array {
    
    self.resultArr = [array mutableCopy];
    
    [self sortWithBegin:0 end:array.count];
    
    return self.resultArr;
}

- (void)sortWithBegin:(NSInteger)begin end:(NSInteger)end {
    
    if (end - begin < 2) {
        return;
    }

    NSInteger mid = [self getPivotWithBegin:begin end:end];

    [self sortWithBegin:begin end:mid];

    [self sortWithBegin:mid+1 end:end];
}

- (NSInteger)getPivotWithBegin:(NSInteger)begin end:(NSInteger)end {
    
    NSNumber *pivot = self.resultArr[begin];
    NSInteger beginPoint = begin;
    NSInteger endPoint = end-1;
    
    BOOL isEnd = YES;
    while (beginPoint != endPoint) {
        if (isEnd) {
            if ([self compare:self.resultArr[endPoint] num2:pivot] > 0) { //end大于轴点，不用动，直接--
                endPoint--;
            } else { //end <= 轴点，覆盖begin
                self.resultArr[beginPoint] = self.resultArr[endPoint];
                beginPoint++;
                isEnd = NO;
            }
        }
        else {
            if ([self compare:self.resultArr[beginPoint] num2:pivot] < 0) { //begin<轴点，不用动，直接++
                beginPoint++;
            } else { //begin >= 轴点，覆盖end
                self.resultArr[endPoint] = self.resultArr[beginPoint];
                endPoint--;
                isEnd = YES;
            }
        }
    }
    
    self.resultArr[beginPoint] = pivot;

    return beginPoint;
}

@end


