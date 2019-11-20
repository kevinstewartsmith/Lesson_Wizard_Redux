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
    @IBOutlet weak var unscrambledDisplay: UITextView!
    @IBOutlet weak var scrambledDisplay: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       wordArrayScrambled = wordScrambler.scrambleArray(theArray: wordArrayUnscrambled)
        print("Second VC unscrambled: \(wordArrayUnscrambled)")
        print("Second VC SCRAMBLED: \(wordArrayScrambled)")
        
        unscrambledDisplay.text = updateDisplayData()
        scrambledDisplay.text =  updateDisplayDataScram()
 
    

    
    }
    
    func updateDisplayData() -> String {
         var rtnString: String = ""
         for i in wordArrayUnscrambled {
             rtnString = "\(rtnString) \n\(i)"
             
             print("yo: \(rtnString)")
             
         }
        return rtnString
     }
    
    func updateDisplayDataScram() -> String {
         var rtnString: String = ""
         for i in wordArrayScrambled {
             rtnString = "\(rtnString) \n\(i)"
             
             print("yo: \(rtnString)")
             
         }
        return rtnString
     }
}
