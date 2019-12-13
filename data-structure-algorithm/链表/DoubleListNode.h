//
//  DoubleListNode.h
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/6.
//  Copyright © 2019 yang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DoubleListNode : NSObject

/// 上一个节点
@property (nonatomic, strong, nullable) DoubleListNode *prev;

/// 下一个节点
@property (nonatomic, strong, nullable) DoubleListNode *next;

/// 节点值
@property (nonatomic, strong, nullable) id value;

// 构造节点
- (instancetype)initWithValue:(_Nullable id)value;

@end

NS_ASSUME_NONNULL_END
