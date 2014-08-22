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
