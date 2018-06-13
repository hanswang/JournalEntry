//
//  DisplayTableViewController.swift
//  JournalEntry
//
//  Created by Hans Wang on 13/6/18.
//  Copyright © 2018 Hans Wang. All rights reserved.
//

import UIKit

class DisplayTableViewController: UITableViewController {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var items: [Item] = []
}
