//
//  ViewController.swift
//  App6
//
//  Created by Hrishika Samani on 10/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    let firstScreen = FirstScreenView()
        
    override func loadView() {
            view = firstScreen
    }
    
    //MARK: expenses array to populate TableView...
    var expenses = [Expense]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Expense App"
        
        firstScreen.tableViewExpense.delegate = self
        firstScreen.tableViewExpense.dataSource = self
        firstScreen.tableViewExpense.separatorStyle = .none

        //MARK: setting the add button to the navigation controller...
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add, target: self,
            action: #selector(onAddBarButtonTapped)
        )
    }
    
    //MARK: got the new expense back and delegated to ViewController...
    func delegateOnAddExpense(expense: Expense){
        expenses.append(expense)
        firstScreen.tableViewExpense.reloadData()
    }
    
    
    @objc func onAddBarButtonTapped(){
        let addExpenseController = AddExpenseViewController()
        addExpenseController.delegate = self
        navigationController?.pushViewController(addExpenseController, animated: true)
    }
    
    @objc func onExpenseButtonTapped(){
        let displayExpenseController = DisplayExpenseViewController()
        displayExpenseController.delegate = self
        navigationController?.pushViewController(displayExpenseController, animated: true)
    }
}
  
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenses", for: indexPath) as! TableViewExpenseCell
        cell.labelTitle.text = expenses[indexPath.row].title
        if let uwAmount = expenses[indexPath.row].amount{
            cell.labelAmount.text = "Cost: $\(uwAmount)"
        }
        if let uwType = expenses[indexPath.row].type{
            cell.labelType.text = "Type: \(uwType)"
        }
        //MARK: setting the image of the receipt...
        if let uwImage = expenses[indexPath.row].image{
            cell.imageReceipt.image = uwImage
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let displayExpenseController = DisplayExpenseViewController()
        displayExpenseController.receiveDetails = expenses[indexPath.row]
        navigationController?.pushViewController(displayExpenseController, animated: true)
    }
}

