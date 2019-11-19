//
//  ViewController.swift
//  Lesson_Wizard_Redux
//
//  Created by Kevin Smith on 11/19/19.
//  Copyright © 2019 Kevin Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textBoxText: String?
    var wordArray = [String]()
    
    @IBOutlet weak var wordsOnDisplay: UITextView!
    
    
    @IBOutlet weak var textBox: UITextField!
    
    
    @IBAction func addWordsPressed(_ sender: UIButton) {
        wordArray.append(textBox.text ?? "")
        print(wordArray)
        let newDisplay = updateDisplayData()
        print("newDisplay: \(newDisplay)")
        wordsOnDisplay.text = newDisplay
            
        textBox.text = ""
    
    
    }
   
    
    @IBAction func scramblePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToScrambledVC", sender: self)
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateDisplayData() -> String {
        var rtnString: String = ""
        for i in wordArray {
            rtnString = "\(rtnString) \n\(i)"
            
            print("yo: \(rtnString)")
            
        }
        
        return rtnString
    }


}

