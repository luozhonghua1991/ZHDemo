//
//  Person.m
//  Test
//
//  Created by Luo on 16/6/24.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "Person.h"


@implementation Person

static Person *_instace;

+ (void)load{
    //想要保存创建的对象，要用成员属性，但是现在的是类方法，没有办法访问成员属性，所以搞了一个static的静态变量进行保存创建对象。
    _instace = [[self alloc]init];
}

+ (instancetype)alloc{
    if (_instace) {
        NSException *Exception = [NSException exceptionWithName:@"NSInternalInconsistencyException" reason:@"There can only be one Persion instance." userInfo:Nil];
        [Exception raise];
    }
    return [super alloc];
}


+ (instancetype)sharePerson{
    return _instace;
}

@end
