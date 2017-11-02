//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Bryan's Air on 10/19/17.
//  Copyright © 2017 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var history = [RPSMatch]()
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(historyArray)
        //print(historyArray.count)
        return history.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell")!
        let match = self.history[(indexPath as NSIndexPath).row]
    
        // Set the text, detals, and image
        cell.textLabel?.text = match.p1.description + " vs " + match.p2.description
        cell.detailTextLabel!.text = messageForMatch(match)
        cell.imageView?.image = UIImage(named: imageForMatch(match))
        
        return cell
    }
    
    func imageForMatch(_ match: RPSMatch) -> String {
        
        var name = ""
        
        switch (match.winner) {
        case .rock:
            name = "RockCrushesScissors"
        case .paper:
            name = "PaperCoversRock"
        case .scissors:
            name = "ScissorsCutPaper"
        }
        
        if match.p1 == match.p2 {
            name = "itsATie"
        }
        return name
    }
    
    func messageForMatch(_ match: RPSMatch) -> String {
        
        // Handle the tie
        if match.p1 == match.p2 {
            return "tie"
        } else {
            return match.p1.defeats(match.p2) ? "Won" : "Loss"
        }
    }
    
    @IBAction func goBackButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
        
}
