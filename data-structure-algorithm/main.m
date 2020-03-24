//
//  main.m
//  data-structure-algorithm
//
//  Created by liyang on 2019/12/3.
//  Copyright © 2019 yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"
#import "LinkedList.h"
#import "DoubleLinkedList.h"
#import "Queue.h"

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


int main(int argc, const char * argv[]) {
    
//    // 栈
//    test1();
//    
//    // 单链表
//    test2();
//    
//    // 双向链表
//    test3();
    
    // 队列
    test4();
    
    return 0;
}
