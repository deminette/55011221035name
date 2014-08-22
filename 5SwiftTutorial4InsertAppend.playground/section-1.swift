var shoppingList = ["Baking Podwer"]
//shoppingList now contains 4 items

shoppingList += ["Chocolate Spread","Cheese","Butter"]
//shoppingList now contains 7 items

shoppingList.insert("Maple Syrub", atIndex:0)
//shoppingList now contains 7 items
//"Maple Syrub" is now the first item in the list

shoppingList.append("Flour")
//shoppingList now contains 3 items, and someone is making pancakes

shoppingList += ["Baking Powder"]
var firstItem = shoppingList[0]
//firstItem is equal to "Eggs"

shoppingList[4...6]=["Bananas","Apples"]
//shoppingList now contains 6 items