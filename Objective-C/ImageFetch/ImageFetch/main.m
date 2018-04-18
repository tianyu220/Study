//
//  main.m
//  ImageFetch
//
//  Created by 云海引力002 on 2018/4/11.
//  Copyright © 2018年 home. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"http://www.qqzhi.com/uploadpic/2014-05-14/051120936.jpg"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
//        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        NSArray *desk = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        
        NSLog(@"%@", desk);
    }
    return 0;
}
