//
//  CustomTableViewController.swift
//  ContactListApp
//
//  Created by Sebastian Calderon on 3/12/18.
//  Copyright © 2018 Sebastian Calderon. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    // MARK: - Data Source. Must be replaced with CoreData.
    // contactsABC is an array of arrays. Each second level array is a section.
    var contactsABC: [[(name: String, phone: String)]] = [
        [ //array 0
            // fist section
            (name: "Sebastian", phone: "998-845-8772"),
            (name: "Sarah", phone: "998-845-2972"),
            (name: "Fabrizio", phone: "998-845-2972"),
            (name: "Lorenzo", phone: "998-845-2972")
        ],
        [ //array 1
            // second section
            (name: "Florence", phone: "998-845-8772"),
            (name: "Tiago", phone: "998-845-2972"),
            (name: "Romina", phone: "998-845-2972"),
            (name: "Mara", phone: "998-845-2972")
        ],
        [ //array 2
            // third section
            (name: "Luciano", phone: "998-845-8772"),
            (name: "Thomas", phone: "998-845-2972")
        ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table View Configuration

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return contactsABC.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contactsABC[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // MARK: - Use of Custom Cells
            let cell = tableView.dequeueReusableCell(withIdentifier: "customContactIdentifier", for: indexPath)
            let customCell = cell as? CustomTableViewCell //Declaration of custom cell as usable cell
        
        // MARK: - Link Cell Data with Data Source
            customCell?.nameLabel.text = contactsABC[indexPath.section][indexPath.row].name
            customCell?.phoneLabel.text = contactsABC[indexPath.section][indexPath.row].phone
            customCell?.profileImage.image = UIImage(named: "profile_1")
            
            return cell
    }

    // MARK: - Set Titles for Headers
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "vip's"
        case 1:
            return "family"
        case 2:
            return "friends"
        default:
            return ""
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
