//
//  main.m
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/3.
//  Copyright © 2019 yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"
#import "ListNode.h"
#import "LinkedList.h"
#import "DoubleLinkedList.h"
#import "Queue.h"
#import "BubbleSort.h"
#import "BubbleSort2.h"
#import "BubbleSort3.h"
#import "SelectionSort.h"
#import "InsertionSort.h"

void test1(){
    Stack *stack = [Stack new];
    [stack push:@"1"];
    [stack push:@"4"];
    [stack push:@"3"];
    [stack push:@"6"];
    [stack push:@"8"];
    
    while (![stack isEmpty]) {
        NSLog(@"element:%@---size:%zd", [stack pop], [stack size]);
    }
}

void test2(){
    LinkedList *head = [LinkedList new];
    [head add:@"1"];
    [head add:@"5"];
    [head add:@"8"];
    [head insert:@"3" ofIndex:1]; //1 3 5 8
    [head deleteOfIndex:0]; //2 5 8
    [head insert:@"1" ofIndex:0];//1 3 5 8
    [head deleteOfIndex:2]; //1 3 8

    [head printfLinedList];
}

void test3(){
    DoubleLinkedList *head = [DoubleLinkedList new];
    [head add:@"1"];
    [head add:@"5"];
    [head add:@"8"];
    [head insert:@"2" ofIndex:1]; //1 2 5 8
    [head deleteOfIndex:0]; //2 5 8
    [head insert:@"3" ofIndex:0];//3 2 5 8
    [head deleteOfIndex:2]; //3 2 8

    [head printfLinedList];
}

void test4(){
    Queue *queue = [Queue new];
    [queue push:@"1"];
    [queue push:@"2"];
    [queue push:@"4"];
    [queue push:@"5"];
    [queue push:@"8"];
    
    while (![queue isEmpty]) {
        NSLog(@"element:%@---size:%zd", [queue pop], [queue size]);
    }
}

void test5(){
    
//    NSArray *numArr = @[@(1), @(3), @(4), @(5), @(6), @(8), @(9), @(12)];
//    NSArray *numArr = @[ @(3), @(9), @(4), @(1), @(6), @(8), @(12), @(5)];
//    NSArray *numArr = @[@(12), @(9), @(8), @(6), @(5), @(4), @(3), @(1)];
    NSArray *numArr = @[@(6), @(5), @(4), @(3), @(1), @(7), @(8), @(9), @(10), @(12)];
    
    BubbleSort *bs = [[BubbleSort alloc] init];
    [bs sort:numArr];
    NSLog(@"BubbleSort: %@", bs);
    
    BubbleSort2 *bs2 = [[BubbleSort2 alloc] init];
    [bs2 sort:numArr];
    NSLog(@"BubbleSort2: %@", bs2);
    
    BubbleSort3 *bs3 = [[BubbleSort3 alloc] init];
    [bs3 sort:numArr];
    NSLog(@"BubbleSort3: %@", bs3);
    
    SelectionSort *ss = [[SelectionSort alloc] init];
    [ss sort:numArr];
    NSLog(@"SelectionSort: %@", ss);
    
    InsertionSort *is = [[InsertionSort alloc] init];
    [is sort:numArr];
    NSLog(@"InsertionSort: %@", is);

}

int main(int argc, const char * argv[]) {
    
//    // 栈
//    test1();
//
//    // 单链表
//    test2();
//
//    // 双向链表
//    test3();
//
//    // 队列
//    test4();
    
    // 排序
    test5();
    
    return 0;
}
