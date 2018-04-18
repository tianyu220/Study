//
//  ViewController.m
//  iTahDoodle
//
//  Created by 云海引力002 on 2018/4/12.
//  Copyright © 2018年 home. All rights reserved.
//

#import "ViewController.h"

//辅助函数，返回保存用户任务数据的文件路径
//TODO
NSString *BNRDocPath(){
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建并设置UIWindow对象
    
//    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winFrame];
//    self.window = theWindow;
    
    //创建一个空的array
    self.tasks = [NSMutableArray array];
    
    //设置三个UI对象的frame属性
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width, winFrame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    //创建并设置UITableView对象
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.taskTable.dataSource = self;
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    //创建并设置UITextField对象，以便用户能能够输入新任务创建并设置UIButton对象
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    
    //创建并设置UIButton对象
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.insertButton setFrame:buttonFrame];
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    
    //将以下三个UI对象加入UIwindow实例
    [self.view addSubview:self.taskTable];
    [self.view addSubview:self.taskField];
    [self.view addSubview:self.insertButton];
    
    //设置UIWindow实例的背景颜色，并放上屏幕
//    self.view.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"xxxxsssss");
}

#pragma mark - Action
- (void)addTask:(id)sender{
    //获取文本框的内容
    NSString *text = [self.taskField text];
    //如果为空就返回
    if ([text length] == 0) {
        return;
    }
    //将文本输入到控制器
//    NSLog(@"Task entered: %@", text);
    //添加任务到tasks数组
    [self.tasks addObject:text];
    //刷新表格时图
    [self.taskTable reloadData];
    
    //清空taskField内容
    [self.taskField setText:@""];
    //关闭键盘
    [self.taskField resignFirstResponder];
}

#pragma mark - Table Data View
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //根据指定的表格段索引给出相应表格段所包含的行数
    return [self.tasks count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //根据指定的表格段索引和杭索引给出相应的 UITableViewCell 对象
    UITableViewCell *cell = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    NSLog(@"now indexPath is: %ld", (long)indexPath.row);
    NSLog(@"itme is: %@", item);
    cell.textLabel.text = item;
    return cell;
}

@end
