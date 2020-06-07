//
//  BinarySearchTree.h
//  数据结构+算法
//
//  Created by liyang on 2019/12/15.
//  Copyright © 2019 yang. All rights reserved.
//
//  二叉搜索树

#import "BinaryTree.h"

NS_ASSUME_NONNULL_BEGIN

@interface BinarySearchTree : BinaryTree

/// 添加元素
- (void)add:(id)element;

/// 删除元素
- (void)remove:(id)element;

@end

NS_ASSUME_NONNULL_END
