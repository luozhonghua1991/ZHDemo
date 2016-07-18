//
//  ViewController.m
//  Test
//
//  Created by Luo on 16/6/21.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()<UIGestureRecognizerDelegate,TestViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 150)];
//   view.backgroundColor = [UIColor blackColor];
////    [self addSubview:self.view];
//    
//    UITapGestureRecognizer *GestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(GestureRecognizerClick)];
//    GestureRecognizer.numberOfTouchesRequired = 1; //手指数
//    GestureRecognizer.numberOfTapsRequired = 1; //tap次数
//    GestureRecognizer.delegate = self;
//    view.userInteractionEnabled =YES;
//    [view addGestureRecognizer:GestureRecognizer];
//    [self.view addSubview:view];
    
    // Do any additional setup after loading the view, typically from a nib.
    TestView *v =[[TestView alloc]initWithFrame:CGRectMake(50, 50, 200, 200)];
    v.backgroundColor = [UIColor redColor];
   
    v.Btnblock = ^(NSString *str){
        
        self.view.backgroundColor = [UIColor blueColor];
        
//        NSLog(@"%@",str);
        
        
        
    };
    v.BtnDownClock = ^(NSString *Str){
        self.view.backgroundColor = [UIColor whiteColor];
    };
//    v.userInteractionEnabled = YES;
    [self.view addSubview:v];
}

//- (void)GestureRecognizerClick{
//    NSLog(@"我点击了View");
//}

- (void)transViewBackGroundColor{
    self.view.backgroundColor = [UIColor blackColor];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
