// To do a for i in swift
for number in 1...10 {
    print("\(number)")
}

// For each in swift
var listOfNames: [String] = ["Alan", "Jenn", "Victor", "Marbella"]
var isNameFounded = false
for name in listOfNames {
    if name.lowercased() == "Marcos".lowercased() {
        print("The name \(name) was founded")
        isNameFounded = true
        break
    }
}

if !isNameFounded {
    print("The name was not founded")
}

// For each in letters
var myName = "Paul"
for letter in myName {
    print("\(letter)")
}

/*
 ¡Intenta este reto!
    Escribe una función utilizando un ciclo for que pase por cada letra de una cadena y cuente cuántas vocales contiene.
    Utiliza una cadena de texto como variable que incluya todas las vocales,
    tanto en mayúscula como en minúscula, junto con sus acentos.
 */

var textWithVocalsAndAccentsLetter = "BaGAHeEiÑLIoONuMUWáTéYUíóú"
var countOfVocalsAndAccentsLetter: Int = 0
var textInLowerCase = textWithVocalsAndAccentsLetter.lowercased()
var vocalsRegularExpression = "aeiouáéíóú"

for letter in textInLowerCase {
    if vocalsRegularExpression.contains(letter) {
        countOfVocalsAndAccentsLetter += 1
    }
}

print("The text contains \(countOfVocalsAndAccentsLetter) vocals")
