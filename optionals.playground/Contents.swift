import UIKit

// Unwarp in a direct way with ternary operator
var optionalValue: String? = nil
let optionalString = optionalValue ?? "Hi there!"
print(optionalString)

// Do it in a function
func greetinFunction(name: String?) -> String {
    let greeting = name != nil ? "Hello \(name!)!" : "Hello Human!"
    return greeting
}

print(greetinFunction(name: nil))

// Platzi challenge with 2 doubles sum
func sumDouble(firsDouble: Double?, secondDouble: Double?) -> Double? {
    let sumResult =
        firsDouble != nil && secondDouble != nil ? firsDouble! + secondDouble! : nil
    return sumResult
}

let sumResult = sumDouble(firsDouble: nil, secondDouble: 20.0)

if sumResult != nil {
    print("Sum Result: \(sumResult!)")
} else {
    print("There isn't the necesary information to do the sum")
}
