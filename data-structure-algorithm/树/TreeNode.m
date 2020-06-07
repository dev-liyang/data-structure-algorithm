//
//  TreeNode.m
//  数据结构+算法
//
//  Created by liyang on 2019/12/15.
//  Copyright © 2019 yang. All rights reserved.
//

#import "TreeNode.h"
#import "Stack.h"

@implementation TreeNode

- (instancetype)initWithElement:(_Nullable id)element parent:(_Nullable id)parent
{
    self = [super init];
    if (self) {
        self.element = element;
        self.parent = parent;
    }
    return self;
}

#pragma mark - help
// 是否是子孙节点
- (BOOL)isChildrenNode:(TreeNode *)parent{
    
    TreeNode *node = parent;
    Stack *stack = [[Stack alloc] init];
    while (node || ![stack isEmpty]) {
        if (node == nil) {
            node = [stack pop];
        }
        if ([node.element intValue] == [self.element intValue]) {
            return YES;
        }
        if (node.right) {
            [stack push:node.right];
        }
        node = node.left;
    }
    return NO;
}

// 是否是叶子节点
- (BOOL)isLeaf{
    return !self.left && !self.right;
}

// 是否是左子节点
- (BOOL)isLeftChild:(TreeNode *)parent{
    if (parent == nil) return NO;
    return [parent.left.element intValue] == [self.element intValue];
}

// 是否是右子节点
- (BOOL)isRightChild:(TreeNode *)parent{
    if (parent == nil) return NO;
    return [parent.right.element intValue] == [self.element intValue];
}

@end
