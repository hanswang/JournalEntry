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
    
    func fetchData() -> Void {
        do {
            items = try context.fetch(Item.fetchRequest())
            print(items)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } catch {
            print("Cannot fetch any data")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        fetchData()
    }
}


extension DisplayTableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = items[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}
