//
//  main.m
//  TestExtend
//
//  Created by monotonewang on 2018/12/23.
//  Copyright © 2018 monotonewang. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <UIKit/UIKit.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    

    @autoreleasepool {
        
        NSString *p=@"jack";
        // insert code here...
        p.length;
        NSLog(@"Hello, World!---%@\n",p);
        
        Person *person=[Person new];
        [person count];
        [person count];
        [person setName:@"ket"];
        [person setName: p];
        [person run];
        NSString *name=[person getName];
        NSLog(@"Person-->%@\n",name);
        
        Person *personInsta=[Person personWithNumber:@"test" :12];
        [personInsta run];
//        NSString *identifierStr = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
//        NSLog(@"设备唯一标识符:%@",identifierStr);
        
    }
    return 0;
}
