//
//  ViewController.m
//  Quizself.OC
//
//  Created by 田宇 on 2018/4/21.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setQuestions: @[@"1+1", @"2+2", @"3+3"]];
    self.answers = @[@"2", @"4", @"6"];
    self.index = 0;
    
    NSLog(@"%@", self.questions);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)nextQuestion:(id)sender{
    self.index += 1;
    if (self.index == [self.questions count]) {
        self.index = 0;
    }
    NSString *question = [self.questions objectAtIndex:self.index];
    [self.questionLable setText:question];
    [self.answerLable setText:@"???"];
}
- (void)showAnswer:(id)sender{
    NSString *answer = [self.answers objectAtIndex:self.index];
    [self.answerLable setText:answer];
}

@end
