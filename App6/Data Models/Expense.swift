//
//  Expense.swift
//  App6
//
//  Created by Hrishika Samani on 10/5/24.
//

import Foundation
import UIKit

struct Expense{
    var title: String?
    var amount: Double?
    var type: String?
    var image: UIImage?
    
    init(title: String? = nil, amount: Double? = nil, type: String? = nil, image: UIImage? = nil) {
        self.title = title
        self.amount = amount
        self.type = type
        self.image = image
    }
    
}
