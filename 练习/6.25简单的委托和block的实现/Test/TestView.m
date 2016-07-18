//
//  TestView.m
//  Test
//
//  Created by Luo on 16/6/21.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        
//        self.view=[[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 150)];
//        self.view.backgroundColor = [UIColor blackColor];
//        [self addSubview:self.view];
//        
//        UITapGestureRecognizer *GestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(GestureRecognizerClick)];
//         GestureRecognizer.numberOfTouchesRequired = 1; //手指数
//         GestureRecognizer.numberOfTapsRequired = 1; //tap次数
//         GestureRecognizer.delegate = self;
//         self.view.userInteractionEnabled =YES;
//        [self.view addGestureRecognizer:GestureRecognizer];
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, 100, 100);
        btn.backgroundColor = [UIColor blackColor];
        [btn addTarget:self action:@selector(BtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        _btn = btn;
        
        _Btn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.Btn.frame = CGRectMake(100, 100, 100, 100);
        self.Btn.backgroundColor = [UIColor yellowColor];
        [self.Btn addTarget:self action:@selector(BtnDownClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.Btn];
        
//        [_btn addTarget:self action:@selector(BtnDownClick) forControlEvents:UIControlEventTouchDragOutside];
//
        

        
    }
    return self;
    
}

- (void)BtnClick{
//    [self.delegate respondsToSelector:@selector()]
    
    
    self.Btnblock(@" fafa");
//    NSLog(@"我点击了View");
}

- (void)BtnDownClick{
    self.BtnDownClock(@"fjkofhaofhaofa");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
