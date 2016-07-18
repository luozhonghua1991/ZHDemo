//
//  TestView.h
//  Test
//
//  Created by Luo on 16/6/21.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol TestViewDelegate <NSObject>
@optional
- (void)transViewBackGroundColor;
@end

@interface TestView : UIView 
@property (nonatomic,assign)id<TestViewDelegate>delegate;

@property (nonatomic,weak) UIButton *btn;

@property (nonatomic,strong) UIButton *Btn;
@property (nonatomic,copy)void(^Btnblock)(NSString *str);

@property (nonatomic,copy)void(^BtnDownClock)(NSString *Str);
@end


