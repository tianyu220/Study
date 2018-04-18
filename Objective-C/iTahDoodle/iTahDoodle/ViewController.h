//
//  ViewController.h
//  iTahDoodle
//
//  Created by 云海引力002 on 2018/4/12.
//  Copyright © 2018年 home. All rights reserved.
//

#import <UIKit/UIKit.h>

//声明辅助函数，该函数回返回特定文件的路径，用于保存用户的任务列表信息
NSString *docPath(void);

@interface ViewController : UIViewController <UITableViewDataSource>

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;

@end

