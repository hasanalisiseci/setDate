//
//  ViewController.swift
//  SetDate
//
//  Created by Hasan Ali on 4.03.2020.
//  Copyright © 2020 Hasan Ali Şişeci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy"
        dateLabel.text = dateFormatter.string(from: datePicker.date)
    }
    
    @IBAction func dateSelectedFromDatePicker (_ : AnyObject) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy"
        dateLabel.text = dateFormatter.string(from: datePicker.date)

    }

}

