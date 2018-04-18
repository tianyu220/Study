//
//  main.m
//  Callbacks
//
//  Created by 云海引力002 on 2018/4/12.
//  Copyright © 2018年 home. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        //修改时区时发送通知
//        [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        
        //修改时区时发送通知(block方式)
        NSNotificationCenter *notify = [NSNotificationCenter defaultCenter];
        [notify addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification *note){
            NSLog(@"time zone is changed!!!");
        }];
        
        NSURL *url = [NSURL URLWithString:@"http://118.190.73.239/123.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
//        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
