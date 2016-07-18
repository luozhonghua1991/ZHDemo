//
//  Man.m
//  Test
//
//  Created by Luo on 16/6/24.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "Man.h"


@implementation Man

+(id)shareMan{
    static Man *m = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m = [[self alloc]init];
    });
    
    return m;
}

@end
