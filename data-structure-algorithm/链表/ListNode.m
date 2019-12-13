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

@end
