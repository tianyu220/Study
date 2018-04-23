//
//  ViewController.h
//  Quiz_OC
//
//  Created by 田宇 on 2018/4/21.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) NSArray *questions;
@property (nonatomic) NSArray *answers;
@property (nonatomic) int index;

@property (nonatomic) IBOutlet UILabel *questionLable;
@property (nonatomic) IBOutlet UILabel *answerLable;

- (IBAction)nextQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end

