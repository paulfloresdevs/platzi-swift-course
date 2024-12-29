import UIKit

// There are two ways to do Set declarations
var animals: Set<String> = Set(["Dog", "Cat", "Bird", "Snake", "Turtle"])
var otherAnimals = Set<String>()

// We can count the number of set elements
var animalsCount = animals.count
var otherAnimalsCount = otherAnimals.count

// Add another animal to the animals list
animals.insert("Elephant")

// Remove an animal
animals.remove("Elephant")

// Remove all animals
animals.removeAll()

// Do an union, intersection, substraction of 2 Sets
var mathStudents = Set<String>(["John", "Jane", "Jack"])
var scienceStudents = Set<String>(["Mary", "Mike", "Sam"])

// Do the union of 2 sets
var students = mathStudents.union(scienceStudents)

// Know the common elements between 2 sets
var studentsIntersection = mathStudents.intersection(scienceStudents)

// Substraction return the elements of the first set that doesn't are
// In the second set
// the students that are in math but not in science
var studentsSubtraction = mathStudents.subtracting(scienceStudents)

// symmetric difference: All the non common elements in 2 Sets
var studentsSymetricDifference = mathStudents.symmetricDifference(scienceStudents)

