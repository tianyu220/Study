//
//  main.m
//  Stocks
//
//  Created by 田宇 on 2018/4/2.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *bs1 = [[BNRStockHolding alloc] init];
        [bs1 purchaseSharePrice:2.30];
        [bs1 currentSharePrice:4.50];
        [bs1 numberOfShares:40];
        
        BNRStockHolding *bs2 = [[BNRStockHolding alloc] init];
        [bs2 purchaseSharePrice:12.19];
        [bs2 currentSharePrice:10.56];
        [bs2 numberOfShares:90];
        
        BNRStockHolding *bs3 = [[BNRStockHolding alloc] init];
        [bs3 purchaseSharePrice:45.10];
        [bs3 currentSharePrice:49.51];
        [bs3 numberOfShares:210];
        
        NSMutableArray *bsList = [NSMutableArray arrayWithObjects:bs1, bs2, bs3, nil];
        
        for (BNRStockHolding *item in bsList) {
            NSLog(@"\npur is %.2f\ncur is %.2f\nnum is %d\ncost is %.2f\nvalue is %.2f\n", [item getPurchaseSharePrice], [item getCurrentSharePrice], [item getNumberOfShares], [item costInDollars], [item valueInDollars]);
        }
//        NSLog(@"%@",bsList);
    }
    return 0;
}
