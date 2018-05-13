//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Erza Carlsson on 5/11/18.
//  Copyright © 2018 Errzilla. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var createdLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(emoji)
        
        emojiLabel.text = emoji.stringEmoji
        createdLabel.text =  "Created: \(emoji.creationYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.defintion
        
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
