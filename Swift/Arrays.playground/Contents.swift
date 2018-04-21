//: Playground - noun: a place where people can play

import Cocoa

var arr: [String] = ["aaa"]
arr.append("bbb")
arr.append("ccc")

var arr2 = ["123", "234", "345"]
arr += arr2
arr.insert("hhh", at: 2)

var index = arr.index(of: "123")

//print(index ?? "not found")


var dict = ["111": 1, "222": 2, "333": 3]
let val = dict["111"]
dict.updateValue(11, forKey: "111")
dict["444"] = 4;

//青铜
//var city = [String: [Int]]()                  //  第一种声名方法
var city = Dictionary<String, Array<Int>>()     //  第二种声名方法
city["Tianjin"] = [300000, 300111, 300222, 300333, 300444]
city["Beijing"] = [100000, 100111, 100222, 100333, 100444]
city["Shanghai"] = [200000, 200111, 200222, 200333, 200444]

var cityCode: [Int] = []
for i in city {
    cityCode += i.value
}
print(cityCode)

var str = "123"
str + "\n"

