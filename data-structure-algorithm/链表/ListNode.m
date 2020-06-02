//
//  ListNode.m
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/3.
//  Copyright © 2019 yang. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

- (instancetype)initWithValue:(_Nullable id)value
{
    self = [super init];
    if (self) {
        self.value = value;
    }
    return self;
}

- (void)printNodeList {
    NSMutableString *listStr = [NSMutableString string];
    ListNode *node = self;
    while (node != nil) {
        [listStr appendFormat:@"%@->", node.value];
        node = node.next;
    }
    [listStr appendFormat:@"null"];
    NSLog(@"\n---------------------\n%@\n---------------------", listStr);
}

@end
