//
//  main.m
//  stockz
//
//  Created by 云海引力002 on 2018/4/12.
//  Copyright © 2018年 home. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:100] forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        for (NSDictionary *dict in stocks) {
            NSLog(@"I have %@ shares of %@", [dict objectForKey:@"shares"], [dict objectForKey:@"symbol"]);
        }
    }
    return 0;
}
