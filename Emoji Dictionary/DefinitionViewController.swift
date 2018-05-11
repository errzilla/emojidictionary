//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Erza Carlsson on 5/11/18.
//  Copyright © 2018 Errzilla. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(emoji)
        
        emojiLabel.text = emoji
        
        if emoji == "😘"
        {
           definitionLabel.text = "Gimme a kiss"
        }
        if emoji == "😳"
        {
            definitionLabel.text = "I'm embarrassed"
        }
        if emoji == "🍆"
        {
            definitionLabel.text = "This is an eggplant"
        }
        if emoji == "😕"
        {
            definitionLabel.text = "I'm sad"
        }
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
