//: Playground - noun: a place where people can play
//闭包

import Cocoa

var volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]


//第一种写法
//func sortAscending(_ i: Int, _ j: Int) -> Bool{
//    return i > j
//}
//let volunteersSorted = volunteerCounts.sorted(by: sortAscending)

//第二种写法
//let volunteersSorted = volunteerCounts.sorted(by: {
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

//第三种写法
//let volunteersSorted = volunteerCounts.sorted(by: {i, j in i < j})

//第四种写法
let volunteersSorted = volunteerCounts.sorted(by: {$0 < $1})


//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights ligths: Int, toExistingLights existingLights: Int) -> Int{
//        return ligths + existingLights
//    }
//    return buildRoads
//}
//var stoplights = 4
//let townPlanByAddingLightsToExistingLights = makeTownGrand()
//stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
//print(stoplights)

//很复杂的方法
//该方法提供两个参数：
//参数1：整型，
//参数2：提供一个整型参数，并且返回值为布尔类型的函数
//返回值：提供两个都为整型的参数，并且返回值为整型的函数
func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    //如果第二个位函数的参数传入第一个参数，返回结果为真的话，返回一个函数（次函数结构与父函数的返回类型一致），否则返回空
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExisitingLights exisitingLights: Int) -> Int{
            return lights + exisitingLights
        }
        return buildRoads
    }else{
        return nil
    }
}
//定义一个条件的闭包
func evaluate(budget: Int) -> Bool{
    return budget > 10_000
}
var stoplights = 4
if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 10_500, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}
print(stoplights)

//人口增长
func makePopulationTracker(forInitialPopulation population: Int) -> ((Int) -> Int){
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int{
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}
var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
growBy(500)
growBy(500)
growBy(500)
currentPopulation = growBy(500)
//let anotherGrowBy = growBy
//anotherGrowBy(500)

var bigCityPopulatuion = 4_061_981
var bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulatuion)
bigCityPopulatuion = bigCityGrowBy(10_000)
currentPopulation

let precinctPopulations = [1244, 2021, 2157]
//map改变数组的内容
let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
//    print(population)
    return population * 2
}
projectedPopulations

//filter过滤
let bigProjections = projectedPopulations.filter{
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections

//reduce计算总和
//let totalProjection = projectedPopulations.reduce(0, {$0 + $1})
let totalProjection = projectedPopulations.reduce(into: 0, {$0 += $1})
totalProjection
