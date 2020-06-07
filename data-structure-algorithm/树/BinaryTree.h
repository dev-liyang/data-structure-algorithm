//
//  BinaryTree.h
//  数据结构+算法
//
//  Created by liyang on 2019/12/15.
//  Copyright © 2019 yang. All rights reserved.
//
//  二叉树

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface BinaryTree : NSObject

/// 根节点
@property (nonatomic, strong, nullable) TreeNode *root;

/// 元素数量
@property (nonatomic, assign) NSInteger size;

/// 清空所有元素
- (void)clear;

/// 是否为空
- (BOOL)isEmpty;

/// 构造一棵树
- (void)creatTreeWithArray:(NSArray *)array;

/// 打印二叉树
- (void)printfTree;

@end

NS_ASSUME_NONNULL_END
