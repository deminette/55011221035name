// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var Num=[Int]()
Num = [55011221035,54011212088]
var Name = ["Phattarayus","Chatchai","???","N02"]
var newID = Num[0]+2
Num.append(55011212233)
Num
Num.append(55011221036)

Num[1...3]=[0,1,2,3]
Num

if(true){
    println("\(Name) on sale for\(Num)!")
}

Num.insert(550, atIndex: 1)
Num

let array: Array<Int>=[1,2,3,4]
let dictionary:Dictionary<String, Int> = ["dog":1, "elephant":2]

var airport:[String: String]=["TYO":"Tokyo","DUB":"Dublin"]
if airport.isEmpty{
    println("the airports dictionary is empty.")
}
else{
    println("the airports dictionary is not empty.")
}

airport["LHR"]="London"
airport["LHR"]="London Hearthow"

airport["BKK"]="Bangkok"

if let oldvalue=airport.updateValue("Dublin International", forKey: "Dub"){
    println("The airports dictionary does not contain")
}
 



