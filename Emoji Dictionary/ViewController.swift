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
    
    var emojis = ["😘","😳","🍆","😕","🤢","☺️","🙃"]
    var emojiText = ["Kiss","Embarassed", "Egg Plant", "Frowny", "Sick", "Pleased", "Silly"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tVEmoji.dataSource = self
        tVEmoji.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        print(indexPath.row)
        //var rowInfo = emojis[indexPath.row] + emojiText[indexPath.row]
       //cell.textLabel?.text = rowInfo
        cell.textLabel?.text = emojis[indexPath.row] + " " + emojiText[indexPath.row]
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
        defVC.emoji = sender as! String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

