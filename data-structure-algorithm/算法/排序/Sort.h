//
//  Sort.h
//  data-structure-algorithm
//
//  Created by liyang on 2020/3/24.
//  Copyright © 2020 yang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sort : NSObject

@property (nonatomic, assign) NSInteger compareCount;

@property (nonatomic, strong) NSMutableArray *resultArr;

- (NSArray *)sort:(NSArray <NSNumber *>*)array;

- (BOOL)compare:(NSInteger)beginIndex endIndex:(NSInteger)endIndex;

// 冒泡排序
- (NSArray *)bubbleSort1:(NSArray <NSNumber *>*)numArr ;
- (NSArray *)bubbleSort2:(NSArray <NSNumber *>*)numArr ;
- (NSArray *)bubbleSort3:(NSArray <NSNumber *>*)numArr ;

- (void)printSortedDesc;

@end

NS_ASSUME_NONNULL_END
