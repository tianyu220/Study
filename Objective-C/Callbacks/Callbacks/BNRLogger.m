//
//  BNRLogger.m
//  Callbacks
//
//  Created by 云海引力002 on 2018/4/12.
//  Copyright © 2018年 home. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

//收到一定字节数的数据后会被调用
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    NSLog(@"received %lu bytes", [data length]);
    //如果NSMutableData对象还不存在，就创建它
    if (!_inconmingData) {
        _inconmingData = [[NSMutableData alloc] init];
    }
    [_inconmingData appendData:data];
}

//最后一部分数据处理完毕后会被调用
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_inconmingData encoding:NSUTF8StringEncoding];
    _inconmingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    NSLog(@"The whole string is %@", string);
}

//获取数据失败时会被调用
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _inconmingData = nil;
}

- (void)zoneChange: (NSNotification *)note{
    NSLog(@"The system time zone has changed!");
}


- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
