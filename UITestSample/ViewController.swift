//
//  ViewController.swift
//  HelloTec4
//
//  Created by user188455 on 2/12/21.
//

import UIKit

class ViewController: UIViewController {
    let emojiTranslator = EmojiTranslator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMeesage(_ sender: UIButton) {        
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            let meaning = emojiTranslator.translate(emoji: wordToLookup)

            let alertController = UIAlertController(title: "Meaning", message: "Hello " + meaning, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
       
        }
        
    }
}



