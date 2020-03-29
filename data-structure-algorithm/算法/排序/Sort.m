//
//  Sort.m
//  data-structure-algorithm
//
//  Created by liyang on 2020/3/24.
//  Copyright © 2020 yang. All rights reserved.
//

#import "Sort.h"

@implementation Sort

- (instancetype)init
{
    self = [super init];
    if (self) {
        _compareCount = 0;
    }
    return self;
}

- (NSArray *)sort:(NSArray <NSNumber *>*)array{
    return nil;
}


- (NSInteger)compare:(NSInteger)beginIndex endIndex:(NSInteger)endIndex{
    _compareCount ++;
    if ([self.resultArr[beginIndex] intValue] > [self.resultArr[endIndex] intValue]) {
        return 1;
    } else if ([self.resultArr[beginIndex] intValue] == [self.resultArr[endIndex] intValue]){
        return 0;
    } else {
        return -1;
    }
}


- (void)exchange:(NSInteger)index1 index2:(NSInteger)index2{
   NSNumber *tmp = self.resultArr[index1];
   self.resultArr[index1] = self.resultArr[index2];
   self.resultArr[index2] = tmp;
}

- (NSString *)description{
    NSMutableString *logMsg = [NSMutableString string];
    for (NSNumber *num in self.resultArr) {
        [logMsg appendFormat:@"%@_", num];
    }
    return [NSString stringWithFormat:@"sortCount=%zd, sortedArr:%@", self.compareCount ,logMsg];
}

@end
