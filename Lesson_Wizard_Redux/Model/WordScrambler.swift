//
//  WordScrambler.swift
//  Lesson_Wizard_Redux
//
//  Created by Kevin Smith on 11/20/19.
//  Copyright © 2019 Kevin Smith. All rights reserved.
//

import Foundation
import UIKit

class WordScrambler {
    //let wordArray = ["w", "o", "r", "d"]

    //let shuffledWord = wordArray.shuffled()


    //Convert word to array
    //let twoWords = "two words"

    
    func scrambleWordString(theStringSays: String) -> String {
        let stringTurnedIntoArray = splitString(theString: theStringSays)
        var newArray : [String] = []
        for n in stringTurnedIntoArray {
            newArray.append(shuffleTheWord(aString: n))
        }
        
        return reBuildNewString(withScrambledWords: newArray)
    }



    //Splits a string into an array
    // "Hello World" will return ["Hello","World"]
    func splitString(theString : String) -> [String] {
        return theString.components(separatedBy: " ")
    }

    //Shuffles a single string's characters
    // "Hello" returns "ellHo"
    func shuffleTheWord(aString: String) -> String {
        
        let wordArray = Array(aString).shuffled()
        
        let newWord = String(wordArray)
        return newWord
    }

    func reBuildNewString(withScrambledWords: [String]) -> String {
        var newString = ""
        
        for n in withScrambledWords {
            newString += n + " "
        }
        return newString
    }
    
    
    func scrambleArray(theArray: [String]) -> [String]{
        var newScrambledArray = [String]()
        for n in theArray {
            let scrambledWord = scrambleWordString(theStringSays: n)
            newScrambledArray.append(scrambledWord)
            //print(scrambleWordString(theStringSays: n))
            print(newScrambledArray)
        }
        return newScrambledArray
        print(newScrambledArray)
    }



    
}
