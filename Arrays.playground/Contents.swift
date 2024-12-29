import UIKit

// An empty list of fruits
var fruits = [String]()

// An non empty list of fruits
var fruits2: [String] = ["Apples", "Bananas", "Oranges"]

// Know if is an empty list
if !fruits.isEmpty {
    var firstFruit = fruits[0]
    print("the first fruit is \(firstFruit)")
} else {
    print("The list is empty")
}

// Add a new fruit
fruits.append("Orange")

// Get the last fruit
let lastFruit = fruits.last!
print("the last fruit is \(lastFruit)")

//  Insert a fruit in a specify position
fruits.insert("Kiwi", at: 1)

// Remove fruit in a specify postion
fruits.remove(at: 1)

// Insert a list inside another list
fruits.append(contentsOf: fruits2)

// Know if the list contains something
let orangeExists = fruits.contains("Orange")
print(fruits)

// Remove an specity fruit
fruits.remove(at: 3)

// Delete the last fruit
fruits.removeLast()

// Delete all fruits
fruits.removeAll()
print(fruits)
