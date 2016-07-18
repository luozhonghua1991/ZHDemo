//
//  Product.m
//  Test
//
//  Created by Luo on 16/6/24.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "Product.h"


@implementation Product
//单利
+(id)shareProduct{
    static Product *p = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        p = [[self alloc]init];
    });
    return p;
}


@end
