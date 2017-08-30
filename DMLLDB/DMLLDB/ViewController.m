//
//  ViewController.m
//  DMLLDB
//
//  Created by lbq on 2017/8/30.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"LLDB learn");
    /*
    pdocspath
    /Users/lbq/Library/Developer/CoreSimulator/Devices/F3CB7B83-56D0-45DF-8103-C585A6EDA046/data/Containers/Data/Application/5C863E30-D8F2-4E2C-9EF0-B46E47706980/Documents
     */
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self testPjson];
    
    [self testPdata];
    
    [self testPivar];
    
    [self testCondition];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testPjson
{
    
    NSDictionary *dic = @{
                          @"name":@"leoliu",
                          @"age":@"29"
                          };
    NSArray *arr = @[dic,dic];
    
    NSLog(@"%@",arr);
    
    /*
    //lldb:
    pjson arr
    [
     {
         "name" : "leoliu",
         "age" : "29"
     },
     {
         "name" : "leoliu",
         "age" : "29"
     }
     ]
     
     pjson dic
     {
     "name" : "leoliu",
     "age" : "29"
     }
     */

}

- (void)testPdata
{
    NSString *str = @"aaaaa";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"%tu",data.length);
    
    /*
    pdata data
    aaaaa
     */
}


- (void)testPivar
{
    Person *person = [Person new];
    person.name = @"leoliu";
    person.age = 18;
    
    NSLog(@"%@",person);
}

- (void)testCondition
{
    NSInteger i = 99;
    while (i--) {
        NSLog(@"%tu",i);
    }
}
@end
