//
//  ViewController.swift
//  JournalEntry
//
//  Created by Hans Wang on 13/6/18.
//  Copyright © 2018 Hans Wang. All rights reserved.
//

import UIKit

class addItemViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var itemEntryTextView: UITextView?
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

