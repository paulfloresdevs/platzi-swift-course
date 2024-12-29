var counter = 1
while counter <= 5 {
    print("The counter is: \(counter)")
    counter += 1
}

var chanceNumber = 0
var correctAnswer = 7

while chanceNumber != 5 {
    var chance = Int.random(in: 1...10)
    chanceNumber += 1
    
    if chance == correctAnswer {
        print("You got it! The correct answer is: \(correctAnswer)")
        break
    } else if chanceNumber == 5 {
        print("You loose! the correct answer was \(correctAnswer)")
    } else {
        print("Try again! The number isn't: \(chance)")
    }
}
