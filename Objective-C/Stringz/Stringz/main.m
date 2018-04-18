//
//  main.m
//  Stringz
//
//  Created by 云海引力002 on 2018/4/11.
//  Copyright © 2018年 home. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //写入文件
//        NSMutableString *str = [[NSMutableString alloc] init];
//        NSError *err;
//        for (int i = 0; i < 10; i++) {
//            [str appendFormat:@"this is %d\n", i];
//            BOOL succes = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&err];
//            if (succes) {
//                NSLog(@"打印成功");
//            }else{
//                NSLog(@"error is %@", [err localizedDescription]);
//            }
//        }
        
        //读取文件
        NSError *err;
        NSString *str = [NSString stringWithContentsOfFile:@"/tmp/cool.txt" encoding:NSUTF8StringEncoding error:&err];
        NSLog(@"%@", str);

    }
    return 0;
}
