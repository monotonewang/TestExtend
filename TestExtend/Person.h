//
//  Person.h
//  TestExtend
//
//  Created by monotonewang on 2018/12/23.
//  Copyright © 2018 monotonewang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    NSString *_name;
    int  _age;
    int _number;
}
-(void)run;

-(void)count;

-(void)setName:(NSString *)name;

-(NSString *)getName;

 
+(instancetype)personWithNumber:(NSString *) name :(int) age;


@end

NS_ASSUME_NONNULL_END
