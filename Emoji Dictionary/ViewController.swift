//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Erza Carlsson on 5/11/18.
//  Copyright © 2018 Errzilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tVEmoji: UITableView!
    
    var emojis : [Emoji] = []
    
    //var emojiText = ["Kiss","Embarassed", "Egg Plant", "Frowny", "Sick", "Pleased", "Silly"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tVEmoji.dataSource = self
        tVEmoji.delegate = self
        emojis = makeEmojiArray()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print(sender)
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        
    var emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.creationYear = 2001
        emoji1.defintion = "A Grinning Face to try to cheer you up."
        
        var emoji2 = Emoji()
        emoji2.stringEmoji = "🤪"
        emoji2.category = "Smiley"
        emoji2.creationYear = 2012
        emoji2.defintion = "A crazy fun face."
        
        var emoji3 = Emoji()
        emoji3.stringEmoji = "😭"
        emoji3.category = "Smiley"
        emoji3.creationYear = 2013
        emoji3.defintion = "A crying face."
        
        var emoji4 = Emoji()
        emoji4.stringEmoji = "🍆"
        emoji4.category = "Vegetable"
        emoji4.creationYear = 2014
        emoji4.defintion = "A purple vegetable that goes well with italian food."
        
        var emoji5 = Emoji()
        emoji5.stringEmoji = "🤢"
        emoji5.category = "Smiley"
        emoji5.creationYear = 2015
        emoji5.defintion = "A green face that looks as if he is about to vomit."
        
        var emoji6 = Emoji()
        emoji6.stringEmoji = "😱"
        emoji6.category = "Smiley"
        emoji6.creationYear = 2016
        emoji6.defintion = "The scream face."
        
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6]
        
        
    }
    


}

