//
//  main.m
//  VowelMovement
//
//  Created by 云海引力002 on 2018/4/12.
//  Copyright © 2018年 home. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建两个数组对象，分别用于保存最初的字符串对象和去除原音字母后的版本
//        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSArray *oldStrings = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
        NSLog(@"old string: %@", oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
//        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        //创建数组对象，保存需要从字符串中移除的字符
//        NSArray *vowels = @[@"a", @"i", @"o", @"u"];
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"i", @"o", @"u", nil];
        
        //声明Block变量/
        void (^devowelizer)(id, NSUInteger, BOOL *);
        
        //将Block对象赋给变量
        devowelizer = ^(id string, NSUInteger i, BOOL *stop){
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            //是否包含字符串‘y’
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            //枚举数组中的字符串，将所有出现的元音字母替换成空字符串
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
//                NSLog(@"s is: %@", s);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [newStrings addObject:newString];
        };
        
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings: %@", newStrings);
    }
    return 0;
}
