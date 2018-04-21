//: Playground - noun: a place where people can play

import Cocoa

var set1: Set = ["111", "222", "333"]
var set2: Set = ["333", "444", "555"]

set1.union(set2)
print(set1)

let s1 = set1.union(set2)
let s2 = set1.intersection(set2)

let set3: Set = ["111", "222"]
let set4: Set = ["444", "333"]
set3.isDisjoint(with: set4)

print(s2)
