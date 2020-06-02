//
//  ListNode.h
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/3.
//  Copyright © 2019 yang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListNode : NSObject

/// 下一个节点
@property (nonatomic, strong, nullable) ListNode *next;

/// 节点值
@property (nonatomic, strong, nullable) id value;

/// 构造节点
- (instancetype)initWithValue:(_Nullable id)value;

/// 打印节点
- (void)printNodeList;

@end

NS_ASSUME_NONNULL_END
