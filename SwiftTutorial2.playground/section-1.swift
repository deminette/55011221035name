let tutorialteam=56
let editorialteam=23
var totalteam=tutorialteam+editorialteam
totalteam+=1

let priceIntiferred = -19
let priceIntExplicit:Int = -19

let priceFloatferred = true
let priceFloatExplicit:Double = -19.99

let onsaleInferred=true
let onsaleExplicit:Bool=true

let nameInferred="whoopie Cushion"
let nameExplicit:String="whoopie Cushion"

var shoppingListExplicit=[String]()
shoppingListExplicit = ["Egg","Milk"]
//var shoppingListExplicit:[String]=["Eggs","Milk"]

var shoppingList=["Eggs","Milk"]
println("the shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList+="Baking Powder"
shoppingList+=["Chocolate Spread","Cheese","Butter"]
var firstItem=shoppingList[0]
shoppingList[0]="Six eggs"
//shoppingList[0...3] = ["Bananas","Apples"]
shoppingList