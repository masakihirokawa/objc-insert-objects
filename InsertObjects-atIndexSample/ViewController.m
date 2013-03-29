//
//  ViewController.m
//  InsertObjects-atIndexSample
//
//  Created by Dolice on 2013/03/28.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //変更可能な配列を生成する
  NSMutableArray *myArray;
  myArray = [NSMutableArray arrayWithObject:@"Apple"];
  
  //2つのオブジェクトを挿入する
  NSIndexSet *indexes;
  indexes = [NSIndexSet indexSetWithIndexesInRange:
             NSMakeRange(0, 2)];
  
  NSArray *insertedObjects;
  insertedObjects = [NSArray arrayWithObjects:
                     @"Banana", @"Orange", nil];
  [myArray insertObjects:insertedObjects
              atIndexes:indexes];
  NSLog(@"%@", myArray);
  
  //変更可能なセットを生成する
  NSMutableArray *orderedSet;
  orderedSet = [NSMutableOrderedSet orderedSetWithObject:@"Apple"];
  
  //2つのオブジェクトを挿入する
  [orderedSet insertObjects:insertedObjects
                  atIndexes:indexes];
  NSLog(@"%@", orderedSet);
}

@end
