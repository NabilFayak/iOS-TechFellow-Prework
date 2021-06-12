//
//  Split.swift
//  Prework
//
//  Created by Nabil Fayak on 5/6/21.
//

import UIKit

class Split: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var peopleNumber: UITextField!
    @IBOutlet weak var splitTotal: UILabel!
    
    var newtotal: Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalLabel.text = String(format: "$%.2f", newtotal)
    }
    
    @IBAction func calculatesplitTotal( sender: Any) {
        let people = Double(peopleNumber.text!) ?? 0
        let totalSplit = newtotal / people
        
        splitTotal.text = String(format: "$%.2f", totalSplit)
    }
}

