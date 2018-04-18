//
//  main.m
//  BMITime
//
//  Created by 田宇 on 2018/4/4.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSPoint point = NSMakePoint(200, 342);
//        NSValue *val = [NSValue valueWithPoint:point];
//        NSLog(@"%@", val);
        
//        NSMutableArray *arr = [[NSMutableArray alloc] init];
//        [arr addObject:@6];
//        [arr addObject:@4.2];
//        NSNumber *a = arr[0];
//        NSNumber *b = arr[1];
//        NSLog(@"%f", [a intValue]+[b doubleValue]);
        
        //创建一个数组，用来包含多个BNREmployee对象
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            //创建BNREmployee实例
            BNREmployee *mikey = [[BNREmployee alloc] init];
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            //将新创建的BNREmployee实例加入数组
            [employees addObject:mikey];
        }
        
        //创建10个BNRAsset对象
        for (int i = 0; i < 10; i++) {
            //创建一个BNRAsset对象
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            //为BNRAsset对象设置合适的标签
            NSString *currentLable = [NSString stringWithFormat:@"Laptop %d", i];
            asset.lable = currentLable;
            asset.resaleValue = 350 + i * 17;
            
            //生成0至9之间的随机整数
            NSUInteger randomIndex = random() % [employees count];
            
            //取出相应的BNREmployee对象
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //将BNRAsset对象赋给该BNREmployee对象
            [randomEmployee addAssets:asset];
        }
        
        //排序
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:@[voa, eid]];
        
        for (BNREmployee *item in employees) {
//            NSLog(@"%d", item.weightInKilos);
        }
    
        
        NSLog(@"Employee: %@", employees);
        
//        NSLog(@"Giving up ownership of one emoloyee");
//        [employees removeObjectAtIndex:5];
//        NSLog(@"Giving up ownership of arrays");
//        employees = nil;
        
    }
//    sleep(100);
    return 0;
}



//{
//    //创建一个BNREmployee类的实例
//    BNREmployee *mikey = [[BNREmployee alloc] init];
//    //        unsigned int a = mikey.officeAlarmCode;
//
//    //使用存方法赋值
//    mikey.weightInKilos = 96;
//    mikey.heightInMeters = 1.8;
//    mikey.employeeID = 12;
//    mikey.hireDate = [NSDate date];
//
//    //        //获取当前时间
//    //        NSDate *now = [NSDate date];
//    //        NSDateFormatter *ndf = [[NSDateFormatter alloc] init];
//    //        [ndf setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//    //        NSString *time = [ndf stringFromDate:now];
//    //        NSLog(@"%@", time);
//
//    //打印属性的值
//    NSLog(@"mikey has a weight of %d", mikey.weightInKilos);
//    NSLog(@"mikey has a height of %.2f", mikey.heightInMeters);
//    NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
//
//    NSDate *date = mikey.hireDate;
//    NSLog(@"%@ hired on %@", mikey, date);
//
//    //打印body mass index的值
//    float bmi = [mikey bodyMassIndex];
//    NSLog(@"mikey has a BMI of %.2f", bmi);
//    double years = [mikey yearsOfEmployment];
//    NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
//}
