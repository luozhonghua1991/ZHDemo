//
//  ViewController.m
//  tableViewtest
//
//  Created by Luo on 16/7/15.
//  Copyright © 2016年 Luo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end


static NSString *ID = @"cell1";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource =self;
    
//   1. //注册tableView
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 40;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    1.注册tableView
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:ID];
    
    cell.textLabel.text = [NSString stringWithFormat:@"index.row=%ld",(long)indexPath.row];
    
    return cell;
    
    //2.最普通的cell的写法
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
//    
//    if (cell==nil) {
//        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
//       }
//       cell.textLabel.text = [NSString stringWithFormat:@"index.row=%ld",(long)indexPath.row];
//    
//    return cell;
//    return nil;
}




@end

