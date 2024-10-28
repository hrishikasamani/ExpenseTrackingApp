//
//  DisplayExpenseView.swift
//  App6
//
//  Created by Hrishika Samani on 10/5/24.
//

import UIKit

class DisplayExpenseView: UIView {

    var labelTitle: UILabel!
    var labelAmount: UILabel!
    var labelType: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Setting the background color...
        self.backgroundColor = .white
        
        setupLabels()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Initializing the UI elements...
    func setupLabels() {
        labelTitle = UILabel()
        labelTitle.textAlignment = .center
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(labelTitle)
        
        labelAmount = UILabel()
        labelAmount.textAlignment = .center
        labelAmount.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(labelAmount)
        
        labelType = UILabel()
        labelType.textAlignment = .center
        labelType.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(labelType)
    }
    func initConstraints() {
        NSLayoutConstraint.activate([
            labelTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelTitle.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            
            labelAmount.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 16),
            labelAmount.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            
            labelType.topAnchor.constraint(equalTo: labelAmount.bottomAnchor, constant: 16),
            labelType.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            ])
    }
}

