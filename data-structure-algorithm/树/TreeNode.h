//
//  TreeNode.h
//  数据结构+算法
//
//  Created by liyang on 2019/12/15.
//  Copyright © 2019 yang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TreeNode : NSObject

@property (nonatomic, strong) id element;       // 节点值
@property (nonatomic, strong) TreeNode *_Nullable left;   // 左子节点
@property (nonatomic, strong) TreeNode *_Nullable right;  // 右子节点
@property (nonatomic, strong) TreeNode *_Nullable parent; // 父节点

- (instancetype)initWithElement:(_Nullable id)element parent:(_Nullable id)parent;

#pragma mark - help
/// 是否是子孙节点
- (BOOL)isChildrenNode:(TreeNode *)parent;

/// 是否是叶子节点
- (BOOL)isLeaf;

/// 是否是左子节点
- (BOOL)isLeftChild:(TreeNode *)parent;

/// 是否是右子节点
- (BOOL)isRightChild:(TreeNode *)parent;

@end

NS_ASSUME_NONNULL_END
