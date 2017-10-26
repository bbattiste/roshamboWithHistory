//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Bryan's Air on 10/19/17.
//  Copyright © 2017 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let historyArray = RockPaperScissorsViewController.giveHistory
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell")!
        let //ARRAYName = self.ARRAYSOURCE[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        //cell.textLabel?.text = villain.name

}
