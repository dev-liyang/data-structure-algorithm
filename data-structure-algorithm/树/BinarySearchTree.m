//
//  BinarySearchTree.m
//  数据结构+算法
//
//  Created by liyang on 2019/12/15.
//  Copyright © 2019 yang. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree

- (void)creatTreeWithArray:(NSArray *)array{
    for (id element in array) {
        [self add:element];
    }
}

- (void)add:(id)element{
    if (self.root == nil) {
        self.root = [[TreeNode alloc] initWithElement:element parent:nil];
    } else {
        [self insertWithParent:self.root element:element];
    }
    self.size ++;
}

- (void)insertWithParent:(TreeNode *)parent element:(id)element{
    if (parent == nil) {
        return;
    }
    
    if ([element intValue] < [parent.element intValue]) { //添加到左子树
        if (parent.left == nil) {
            parent.left = [[TreeNode alloc] initWithElement:element parent:parent];
        } else {
            [self insertWithParent:parent.left element:element];
        }
    } else { //添加到右子树
        if (parent.right == nil) {
            parent.right = [[TreeNode alloc] initWithElement:element parent:parent];
        } else {
            [self insertWithParent:parent.right element:element];
        }
    }
}

- (void)remove:(id)element{
    TreeNode *node = [self findNodeWithElement:element];

    if (node.left == nil && node.right == nil) { //叶子节点
        if ([node isLeftChild:node.parent]) { //是父节点的左子节点
            node.parent.left = nil;
        } else {
            node.parent.right = nil;
        }
    } else if (node.left == nil) {
        if ([node isLeftChild:node.parent]) {
            node.parent.left = node.right;
        } else {
            node.parent.right = node.right;
        }
    } else if (node.right == nil) {
        if ([node isLeftChild:node.parent]) {
            node.parent.left = node.left;
        } else {
            node.parent.right = node.left;
        }
    } else { //左右子节点都有
        //找到其右子树中最小的节点
        TreeNode *min = node.right;
        while (min) {
            if (min.left == nil) {
                break;
            }
            min = min.left;
        }
        
        node.element = min.element;
        
        if (min.right) {
            if ([min isLeftChild:min.parent]) {
                min.parent.left = min.right;
            } else {
                min.parent.right = min.right;
            }
        } else {
            if ([min isLeftChild:min.parent]) {
                min.parent.left = nil;
            } else {
                min.parent.right = nil;
            }
        }
    }
    
    self.size --;
}

- (TreeNode *)findNodeWithElement:(id)element {
    TreeNode *node = self.root;
    
    while (node) {
        if ([element intValue] == [node.element intValue]) {
            return node;
        } else if ([element intValue] < [node.element intValue]) {
            node = node.left;
        } else {
            node = node.right;
        }
    }
    
    return node;
}

@end
