//
//  ViewController.m
//  VFLtest
//
//  Created by Luo on 16/7/12.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "ViewController.h"
//添加上这个宏定义就不用加mas 前缀了
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND

//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //蓝色View
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor =[UIColor blueColor];
    [self.view addSubview:blueView];
    
    //红色View
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor =[UIColor redColor];
    [self.view addSubview:redView];

    
    CGFloat margin = 20;
    CGFloat height = 50;
    
    [blueView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.left).offset(margin);
        make.bottom.equalTo(self.view.bottom).offset(-margin);
        make.right.equalTo(redView.left).offset(-margin);
        make.height.equalTo(height);
        make.top.equalTo(redView.top);
        make.bottom.equalTo(redView.bottom);
        make.width.equalTo(redView.width);
    }];
    
    [redView makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view.right).offset(-margin);
   
        
        
        
    }];
  
}


- (void)masonryTest4{
    //蓝色View
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor =[UIColor blueColor];
    [self.view addSubview:blueView];
    
    [blueView makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(100);
        make.center.equalTo(self.view);
    }];
}

- (void)masonryTest3{
    //蓝色View
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor =[UIColor blueColor];
    [self.view addSubview:blueView];
    
    //    //距离父控件四周都是50的间距
    //    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.left.top.mas_equalTo(self.view).offset(50);
    //        make.right.bottom.mas_equalTo(self.view).offset(-50);
    //    }];
    
    //距离父控件四周都是100的间距
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        //edges 边缘
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(100, 100, 100, 100));
        
    }];
    

}


- (void)masonryTest2{
    //蓝色View
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor =[UIColor blueColor];
    [self.view addSubview:blueView];
    
    //居中（水平+竖直）
    //大小等于父控件的一半
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(self.view).multipliedBy(0.5);
        make.center.mas_equalTo(self.view);
    }];

}

- (void)masonryTest1{
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor =[UIColor blueColor];
    [self.view addSubview:blueView];
    //添加新的约束
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        //在这个block里面利用make对象添加
        //尺寸约束
        //        make.size.mas_equalTo(CGSizeMake(200, 200));
        make.size.mas_equalTo(self.view).multipliedBy(0.5).offset(0);
        //位置约束:居中
        //        make.center.mas_equalTo(self.view);
        
        make.left.mas_equalTo(self.view.mas_left).with.offset(20);
        make.top.mas_equalTo(self.view.mas_top).with.offset(20);
        //        make.centerX.mas_equalTo(self.view.mas_centerX);
        //        make.centerY.mas_equalTo(self.view.mas_centerY);
        
    }];
    
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor =[UIColor redColor];
    [self.view addSubview:redView];
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        //        make.size.equalTo(@100);
        make.size.equalTo([NSValue valueWithCGSize:CGSizeMake(100, 100) ]);
        make.left.equalTo(self.view.mas_left).with.offset(20);
        make.top.equalTo(self.view.mas_top).with.offset(20);
    }];
    //这个方法只会添加新的约束
    //    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
    //
    //    }];
    //
    //    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.width.height.equalTo(@100);
    //        make.right.bottom.equalTo(self.view).offset(-20);
    ////        make.bottom.equalTo(self.view.mas_bottom).with.offset(-20);
    //    }];
    
    
    // Do any additional setup after loading the view, typically from a nib.

}

/**

//这个方法会将以前的约束删掉，重新创建约束
[redView mas_remakeConstraints:^(MASConstraintMaker *make) {
    
}];
//这个方法是用来修改约束的(会覆盖以前的某些特定约束)
[redView mas_updateConstraints:^(MASConstraintMaker *make) {
    
}];
[redView mas_closestCommonSuperview:blueView];

*/






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
