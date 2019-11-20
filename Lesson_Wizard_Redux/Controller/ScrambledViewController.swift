//
//  ScrambledViewController.swift
//  Lesson_Wizard_Redux
//
//  Created by Kevin Smith on 11/19/19.
//  Copyright © 2019 Kevin Smith. All rights reserved.
//

import UIKit

class ScrambledViewController: UIViewController {
    var wordArrayUnscrambled = [String]()
    var wordArrayScrambled = [String]() 
    var wordScrambler = WordScrambler()
    //var testVar: String
    override func viewDidLoad() {
        super.viewDidLoad()
        
       wordArrayScrambled = wordScrambler.scrambleArray(theArray: wordArrayUnscrambled)
        print("Second VC unscrambled: \(wordArrayUnscrambled)")
        print("Second VC SCRAMBLED: \(wordArrayScrambled)")
    }
    

    
}
