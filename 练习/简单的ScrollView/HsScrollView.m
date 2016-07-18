//
//  HsScrollView.m
//  ScrollViewTest
//
//  Created by Luo on 16/7/5.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "HsScrollView.h"


@interface HsScrollView()<UIScrollViewDelegate,UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView  *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
/** 滚动图的图片*/
//@property (weak,nonatomic) UIImageView             *imageView;

@end

@implementation HsScrollView
+ (instancetype)HsScrollViewShow{
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]lastObject];
    
    
}


#pragma mark -- setter方法的重写
//设置数据
- (void)setImageNames:(NSArray *)imageNames{
    _imageNames = imageNames;
    
    
    //移除之前的imageView
    //让subviews数组中的所有对象都执行 removeFromeSuperview方法。。。。
    [self.scrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    
    for (int i=0; i<imageNames.count; i++) {
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.image = [UIImage imageNamed:imageNames[i]];
//        imageView.backgroundColor =[UIColor yellowColor];
        [self.scrollView addSubview:imageView];
        imageView.tag=i;
        if (imageView.tag%2==0) {
            UITapGestureRecognizer *GestureRecognizer =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(GestureRecognizer)];
            GestureRecognizer.delegate=self;
            imageView.userInteractionEnabled = YES;
            [imageView addGestureRecognizer:GestureRecognizer];

        }else{
            UITapGestureRecognizer *GestureRecognizer1 =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(GestureRecognizer1)];
            GestureRecognizer1.delegate=self;
            imageView.userInteractionEnabled = YES;
            [imageView addGestureRecognizer:GestureRecognizer1];
        }
    }
}

-(void)setColor:(UIColor *)color{
    _color = color;
    
    self.pageControl.pageIndicatorTintColor = color;
    
}
-(void)setCurrentColor:(UIColor *)currentColor{
    _currentColor = currentColor;
    
    self.pageControl.currentPageIndicatorTintColor= currentColor;
}
//设置位置
- (void)layoutSubviews{
    [super layoutSubviews];
//    self.scrollView.backgroundColor = [UIColor redColor];
//    self.scrollView.showsVerticalScrollIndicator = NO;
//    self.scrollView.showsHorizontalScrollIndicator =NO;
    self.scrollView.delegate=self;
//    self.scrollView.pagingEnabled =YES;
    self.scrollView.frame =self.bounds;
    self.pageControl.frame = CGRectMake(self.bounds.size.width-150, self.bounds.size.height-60, 150, 37);
//    self.pageControl.hidesForSinglePage =YES;
    CGFloat X = self.scrollView.frame.size.width;
    CGFloat Y = self.scrollView.frame.size.height;
    for (int i=0 ; i<self.scrollView.subviews.count; i++) {
        self.scrollView.subviews[i].frame = CGRectMake(i*X, 0, X, Y);
    }
    self.scrollView.contentSize = CGSizeMake(self.imageNames.count*X, 0);
    self.pageControl.numberOfPages = self.scrollView.subviews.count;
}
#pragma mark - <UIScrollViewDelegate>
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSInteger page = (int)self.scrollView.contentOffset.x/self.scrollView.frame.size.width+0.5;
    self.pageControl.currentPage = page;
}
- (void)GestureRecognizer{
    if ([self.delegate respondsToSelector:@selector(HsScrollViewClick)]) {
            [self.delegate HsScrollViewClick];
        }
}
- (void)GestureRecognizer1{
    self.HsScrollViewBlock();
}
@end
