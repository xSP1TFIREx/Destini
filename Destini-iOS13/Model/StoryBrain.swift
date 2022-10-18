import Foundation

var currentCounter = 0


let story = Story(title: stories,
                  choice1: choices1,
                  choice2: choices2)


let stories = ["You see a fork in the road.", "You see a tiger.", "You`ve found a treasure chest."]
let choices1 = ["Take a left.", "Shout for help.", "Open it."]
let choices2 = ["Take a right.", "Play dead.", "Check for traps."]


func nextStory(_ currentChoice: String) {
    if currentChoice == choices1[currentCounter] {
        currentCounter += 1
    } else {
        currentCounter += 2
    }
    checkCurrentCounter()
}


func checkCurrentCounter() {
    if currentCounter > stories.count - 1 {
        currentCounter = 0
    }
}
