import UIKit

func finalNote(note: Double, exempt: Bool) {
    if ( note >= 6 || exempt ) {
        print("Congratulations! You passed! with a note of \(note)")
    } else if ( note >= 3 ) {
        print("You don't passed, don't give up!")
    } else {
        print("I'll see you the next semester")
    }
}

func finalNoteCalculation(exam: Double, project: Double, homework: Double ) -> Double {
    let sum = exam + project + homework
    let finalNote = sum / 3
    return finalNote
}


let finalNote = finalNoteCalculation(exam: 8, project: 9, homework: 10)
finalNote(note: finalNote, exempt: false)
