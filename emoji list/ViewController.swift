//
//  ViewController.swift
//  emoji list
//
//  Created by Samyak Shah on 10/3/16.
//  Copyright © 2016 Samyak Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var listtableview: UITableView!
    
    var emojis = ["😀","😍","🐼","🇮🇳", "💩", "👽"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
        listtableview.dataSource = self
        listtableview.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       print(indexPath.row)
        let cell = UITableViewCell ()
        cell.textLabel?.text = emojis[indexPath.row]
        
        
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

