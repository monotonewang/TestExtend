//
//  main.m
//  TestExtend
//
//  Created by monotonewang on 2018/12/23.
//  Copyright © 2018 monotonewang. All rights reserved.
//
//#import 是 #include的增强版 无论一个文件无论导入多少d次，只会包含一次
#import <Foundation/Foundation.h>
//#import <UIKit/UIKit.h>
#import "Person.h"

//Mac快捷键汇总 Xcode快捷键汇总（2019）
//https://www.jianshu.com/p/4dd914b93555

//int argc, const char * argv[]中 argc是指命令行参数个数，argv[0]是指可执行文件的路径，argv[1]是指命令行第一个参数，argv[2]是指命令行第二个参数，以此类推。

//c语言类型
//基础数据类型 int float double
// long double 16个字节
// short int (简称 short) 2个字节
// int 4个字节
// long int 简称long 不同平台空间不相同 ios 4字节 mac 8字节
// long long 8个字节
//指针类型
//Void类型
//typedef
//oc数据类型
//BOOL
// oc支持 unsigned无符号

void testBoolean(void);
void testNumber(void);
void testEnum(void);

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        testNumber();
        testBoolean();
        testEnum();
        
        NSString *p=@"jack";
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
//        NSString *identifierStr = [[[UIDevice currentDevice] identifierForVendor]UUIDString];
//        NSLog(@"设备唯一标识符:%@",identifierStr);
        
    }
    return 0;
}


void testBoolean(){
    BOOL isGetCourse=NO;
    Boolean isSuccess=TRUE;
    NSLog(@"isGetCourse=%d,------isSuccess=%d",isGetCourse,isSuccess);
    NSLog(@"%@",isGetCourse?@"YES":@"NO");
}
/*
 依次为 0，1，2，3
 */
void testEnum(){
    enum season{spring=4,summer=1,fall,winter};
    enum season mySeason;
    mySeason=fall;
    NSLog(@"mySeason=%u",mySeason);
}
void testNumber(){
    int octalValue=013;
    int hexValue1= 0x13;
    int hexValue2=0XaF;
    NSLog(@"octalValue=%d",octalValue);
    NSLog(@"hexValue1=%d",hexValue1);
    NSLog(@"hexValue2=%d",hexValue2);
    double a=0.0;
    NSLog(@"a=%d",5.0/a);
    //强制类型装换
    int myInt=(int)1.2+(int)2.4;
    NSLog(@"myInt=%d",myInt);
    double randomNum=arc4random()%10;
    NSLog(@"randomNum=%g",randomNum);
    NSLog(@"按位与%d",5&9);
    NSLog(@"4<5=%d",4<5&&'6'<7);
    NSLog(@"%@",5>3?@"5大于3":@"5不大于3");
    int point=60;
    if(point>=60){
      NSLog(@"%@",@"及格");
    }else{
        NSLog(@"%@",@"不及格");
    }
    switch (point) {
        case 60:
            NSLog(@"%@",@"及格咯");
            break;
        default:
            NSLog(@"%@",@"不清楚");
            break;
    }
}
