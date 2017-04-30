//
//  ViewController.m
//  NSNumbers
//
//  Created by Junior Samaroo on 2017-04-29.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // dont store native c types, use objects
    int iAmInt = 5;
    float iAmFloat = 3.3;
    double iAmDouble = 5.666667;
    
    NSLog(@"Int: %d", iAmInt);
    NSLog(@"Float: %f", iAmFloat);
    NSLog(@"int: %f", iAmDouble);
    
   // NSArray *arr = @[iAmInt, iAmFloat]; // issues
    
    
    //ALways use NSNumber
    NSNumber *numInt = [NSNumber numberWithInt:5];
    //C type
    int val = numInt.intValue;
    
    NSString *strVal = [numInt stringValue];
    NSString *strVal2 = numInt.stringValue; // dot syntax
    
    // better than int because of auto determines type of machine running on
    NSInteger someInt = 55;
    
    // Need value for calculations
    NSNumber *sumNum = [NSNumber numberWithInt:[numInt intValue] * [numInt intValue]];
    NSNumber *sumNum2 = [NSNumber numberWithInt:(numInt.intValue * numInt.intValue)];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
