//
//  Person.m
//  TestExtend
//
//  Created by monotonewang on 2018/12/23.
//  Copyright © 2018 monotonewang. All rights reserved.
//

#import "Person.h"

@implementation Person{
   
   
}

-(void) count{
    int num=12;
    num++;
    static int staticnum=12;
    staticnum++;
    NSLog(@"num =%d  staticnum=%d",num,staticnum);
}

-(NSString *)getName{
    return _name;
}

- (void)setName:(NSString *)name{
    _name = name;
}

- (void)run{
    NSLog(@"\n%@ run age %d",_name,_age);
}

+(instancetype)personWithNumber:(NSString * ) name :(int) age{
    Person *p1=[Person new] ;
    p1->_name=name;
    p1->_age=age;
    return p1;
}


@end


