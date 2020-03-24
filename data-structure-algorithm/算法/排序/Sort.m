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


- (BOOL)compare:(NSInteger)beginIndex endIndex:(NSInteger)endIndex{
    _compareCount ++;
    if ([self.resultArr[beginIndex] intValue] > [self.resultArr[endIndex] intValue]) {
        return YES;
    } else{
        return NO;
    }
}

- (void)printSortedDesc {
    NSMutableString *logMsg = [NSMutableString string];
    for (NSNumber *num in self.resultArr) {
        [logMsg appendFormat:@"%@_", num];
    }
    NSLog(@"sortCount=%zd, sortedArr:%@", self.compareCount ,logMsg);
}

@end
