//
//  BinaryTree.m
//  数据结构+算法
//
//  Created by liyang on 2019/12/15.
//  Copyright © 2019 yang. All rights reserved.
//

#import "BinaryTree.h"
#import "Queue.h"
#import "Stack.h"

@interface BinaryTree ()

@property (nonatomic, assign) BOOL stop;

@end

@implementation BinaryTree

#pragma mark - Initial
- (void)creatTreeWithArray:(NSArray *)array{
}

- (void)clear{
    _root = nil;
}

- (BOOL)isEmpty{
    return self.size == 0;
}

#pragma mark - help
// 树状打印
- (void)printfTree{
    NSLog(@"\n%@", [self printfTree:_root nodePrefix:@"" leftPrefix:@"" rightPrefix:@""]);
}

static NSString *rightAppend = @"┌──";
static NSString *leftAppend = @"└──";
static NSString *blankAppend = @"   ";
static NSString *lineAppend = @"│  ";

//中序遍历打印
- (NSString *)printfTree:(TreeNode *)node
              nodePrefix:(NSString *)nodePrefix
              leftPrefix:(NSString *)leftPrefix
             rightPrefix:(NSString *)rightPrefix{

    TreeNode *left = node.left;
    TreeNode *right = node.right;
    NSString *elementStr = [NSString stringWithFormat:@"%@", node.element];
    
    NSMutableString *nodeString = [NSMutableString string];
    if (right != nil) {
        [nodeString appendString:[self printfTree:right
                                       nodePrefix:[rightPrefix stringByAppendingString:rightAppend]
                                       leftPrefix:[rightPrefix stringByAppendingString:lineAppend]
                                      rightPrefix:[rightPrefix stringByAppendingString:blankAppend]]];
    }
    
    [nodeString appendFormat:@"%@%@\n", nodePrefix, elementStr];
    
    if (left != nil) {
        [nodeString appendString:[self printfTree:left
                                       nodePrefix:[leftPrefix stringByAppendingString:leftAppend]
                                       leftPrefix:[leftPrefix stringByAppendingString:blankAppend]
                                      rightPrefix:[leftPrefix stringByAppendingString:lineAppend]]];
    }
    return nodeString;
}

@end
