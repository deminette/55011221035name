var airports:[String: String]=["TYO": "Tokyo", "DUB": "Dublin"]

if airports.isEmpty{
    println("The airports dictionary is empty.")
} else {
    println("The airports dictionary is not empty.")
}

//prints "The airports dictionary is not empty."

println("The airports dictionary contains \(airports.count) items.")
// prints "The airports dictionary contains 2 items."

airports["APL"]="Apple International"
//"Apple International" is not real airport for APL, so delete it
airports["APL"]=nil
//APL has now been removed from the dictionary

if let removedValue = airports.removeValueForKey("DUB"){
    println("The removed airport's name is \(removedValue)")
} else {
    println("The airports dictionary does not contains a value for DUB.")
}
//prints "The removed airport's name is Dublin International."