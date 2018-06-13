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
    
    @IBAction func saveItem(_ sender: Any) {
        guard let enteredText = itemEntryTextView?.text else {
            return
        }
        
        if enteredText.isEmpty || itemEntryTextView?.text == "Type anything..." {
            let alert = UIAlertController(title: "Please Type Something", message: "Your entry was left blank", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (action) in
                // place holder
            }))
            
            self.present(alert, animated: true, completion: nil)
        } else {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newEntry = Item(context: context)
            
            newEntry.name = enteredText
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            dismiss(animated: true, completion: nil)
        }
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

