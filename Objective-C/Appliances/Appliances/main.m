//
//  main.m
//  Appliances
//
//  Created by 云海引力002 on 2018/4/13.
//  Copyright © 2018年 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *app = [[BNRAppliance alloc] init];
        NSLog(@"%@", app);
//        NSLog(@"voltage: %d, productName: %@", [app voltage], [app productName]);
    }
    return 0;
}
