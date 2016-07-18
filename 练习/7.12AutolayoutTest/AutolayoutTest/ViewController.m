//
//  ViewController.m
//  AutolayoutTest
//
//  Created by Luo on 16/7/12.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *widthCon;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightCon;
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label.text = @"jsdfpodsjfoisfjpds";
    
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.label.text = @"ffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsfffjsf;jsdkfl;jsdklf;jsf";
//
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:10];
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.widthCon.constant = 100;
    self.heightCon.constant = 200;
//    [self.redView layoutIfNeeded];
//    [UIView commitAnimations];
//    [UIView animateWithDuration:10 animations:^{
//  
//        [self.view layoutIfNeeded];
//        NSLog(@"%f",self.redView.frame.size.width);
//       
//        
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
