//
//  DisplayExpenseViewController.swift
//  App6
//
//  Created by Hrishika Samani on 10/5/24.
//

import UIKit

class DisplayExpenseViewController: UIViewController {
    var delegate:ViewController!
    // MARK: Creating an instance of ShowProfileView...
    let displayExpenseView = DisplayExpenseView()
    
    var receiveDetails: Expense?

    override func loadView() {
        view = displayExpenseView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let unwrappedTitle = receiveDetails?.title {
            if !unwrappedTitle.isEmpty{
                displayExpenseView.labelTitle.text = "Title: \(unwrappedTitle)"
            }
        }
        
        if let unwrappedAmount = receiveDetails?.amount {
            if !unwrappedAmount.isZero{
                displayExpenseView.labelAmount.text = "Amount: \(unwrappedAmount)"
            }
        }
        
        if let unwrappedType = receiveDetails?.type {
            print("Expense Type: \(unwrappedType)")  // Debug statement
            if !unwrappedType.isEmpty{
                displayExpenseView.labelType.text = "Type: \(unwrappedType)"
            }
        }
        // Do any additional setup after loading the view.
    }

}

