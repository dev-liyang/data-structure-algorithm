//
//  DoubleListNode.m
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/6.
//  Copyright © 2019 yang. All rights reserved.
//

#import "DoubleListNode.h"

@implementation DoubleListNode

- (instancetype)initWithValue:(id)value
{
    self = [super init];
    if (self) {
        self.value = value;
    }
    return self;
}

@end
