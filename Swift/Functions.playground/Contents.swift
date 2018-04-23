//: Playground - noun: a place where people can play

import Cocoa

func printGreeting(name: String..., age: Int = 22){
    print("Hello \(name) is \(age)")
}

//printGreeting(name: "Tom", "Jerry")

func appendErrorCode(_ code: Int, toErrorString errorString: inout String){
    if code == 400 {
        errorString += "bad request"
    }
}

var error = "The request failed: "
appendErrorCode(400, toErrorString: &error)


//奇数偶数
func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds = [Int]()
    for num in numbers {
        if num % 2 == 0 {
            evens.append(num)
        }else{
            odds.append(num)
        }
    }
    return (evens, odds)
}

//let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers


let sortNumbers = [10, 1, 12, 22, 3, 51, 545, 11, 87]
let theNum = sortedEvenOddNumbers(sortNumbers)
//print(theNum.evens)

func greetByMiddleName(fromFullName name:(first: String, middle: String?, last: String)){
    guard let minddleName = name.middle else {
        print("Hey there")
        return
    }
    print("Hey \(minddleName)")
}
greetByMiddleName(fromFullName: ("Matt", nil, "Mathias"))



//挑战
func siftBeans(fromGroceryList: [String]) -> (beans: [String], otherGrocery: [String]){
    var beans = [String]()
    var otherGrocery = [String]()
    
    for item in fromGroceryList {
        item.hasSuffix("beans") ? beans.append(item) : otherGrocery.append(item)
    }
    return (beans, otherGrocery)
}

let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
print(result)
