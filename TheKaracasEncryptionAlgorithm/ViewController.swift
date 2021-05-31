//
//  ViewController.swift
//  TheKaracasEncryptionAlgorithm
//
//  Created by Daniel Washington Ignacio on 31/05/21.
//


/*
 Make a function that encrypts a given input with these steps:

 Input: "apple"

 Step 1: Reverse the input: "elppa"

 Step 2: Replace all vowels using the following chart:

 a => 0
 e => 1
 i => 2
 o => 2
 u => 3

 // "1lpp0"
 Step 3: Add "aca" to the end of the word: "1lpp0aca"

 Output: "1lpp0aca"

 Examples

 encrypt("banana") ➞ "0n0n0baca"

 encrypt("karaca") ➞ "0c0r0kaca"

 encrypt("burak") ➞ "k0r3baca"

 encrypt("alpaca") ➞ "0c0pl0aca"
 Notes

 All inputs are strings, no uppercases and all output must be strings.
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     //   print(self.encrypt("banana"))
     //   print(self.encrypt("karaca"))
     //   print(self.encrypt("burak"))
        print(self.encrypt("alpaca"))
    }
    
    func encrypt(_ word: String) -> String {
        var arrayReversed: [Character] = []
        for n in word{
            switch n {
            case "a":
                arrayReversed.append("0")
            case "e":
                arrayReversed.append("1")
            case "i":
                arrayReversed.append("2")
            case "o":
                arrayReversed.append("2")
            case "u":
                arrayReversed.append("3")
            default:
                arrayReversed.append(n)
            }
        }
        arrayReversed.reverse()
        arrayReversed.append("a")
        arrayReversed.append("c")
        arrayReversed.append("a")
        return String(arrayReversed)
    }

}

