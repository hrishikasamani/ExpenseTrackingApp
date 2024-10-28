//
//  AddExpenseView.swift
//  App6
//
//  Created by Hrishika Samani on 10/5/24.
//

import UIKit

class AddExpenseView: UIView {
    
    var textFieldTitle: UITextField!
    var textFieldAmount: UITextField!
    var buttonSelectType: UIButton!
    var buttonTakePhoto: UIButton!
    var buttonAdd: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setuptextFieldTitle()
        setuptextFieldAmount()
        setupbuttonSelectType()
        setupbuttonTakePhoto()
        setupbuttonAdd()
        initConstraints()
    }
    
//    MARK: methods to initialize the UI elements...
    func setuptextFieldTitle(){
        textFieldTitle = UITextField()
        textFieldTitle.placeholder = "Put title"
        textFieldTitle.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textFieldTitle)
    }
    func setuptextFieldAmount(){
        textFieldAmount = UITextField()
        textFieldAmount.placeholder = "Put amount"
        textFieldAmount.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textFieldAmount)
    }
    
    func setupbuttonSelectType(){
        buttonSelectType = UIButton(type: .system)
        buttonSelectType.setTitle("Select the type of expense:", for: .normal)
        //MARK: the on-tap primary action will pop up the menu...
        buttonSelectType.showsMenuAsPrimaryAction = true
        buttonSelectType.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonSelectType)
    }
    
    func setupbuttonTakePhoto(){
        buttonTakePhoto = UIButton(type: .system)
        buttonTakePhoto.showsMenuAsPrimaryAction = true
        buttonTakePhoto.setTitle("", for: .normal)
        buttonTakePhoto.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        buttonTakePhoto.contentHorizontalAlignment = .fill
        buttonTakePhoto.contentVerticalAlignment = .fill
        buttonTakePhoto.imageView?.contentMode = .scaleAspectFit
        buttonTakePhoto.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonTakePhoto)
    }
    
    func setupbuttonAdd(){
           buttonAdd = UIButton(type: .system)
           buttonAdd.setTitle("Add Expense", for: .normal)
           buttonAdd.translatesAutoresizingMaskIntoConstraints = false
           self.addSubview(buttonAdd)
    }
    //MARK: initialize the constraints...
    func initConstraints(){
        NSLayoutConstraint.activate([
            textFieldTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            textFieldTitle.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            textFieldAmount.topAnchor.constraint(equalTo: textFieldTitle.bottomAnchor, constant: 16),
            textFieldAmount.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            buttonSelectType.topAnchor.constraint(equalTo: textFieldAmount.bottomAnchor, constant: 16),
            buttonSelectType.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            buttonTakePhoto.topAnchor.constraint(equalTo: buttonSelectType.bottomAnchor, constant: 16),
            buttonTakePhoto.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            buttonTakePhoto.widthAnchor.constraint(equalToConstant: 100),
            buttonTakePhoto.heightAnchor.constraint(equalToConstant: 100),
            
            buttonAdd.topAnchor.constraint(equalTo: buttonTakePhoto.bottomAnchor, constant: 16),
            buttonAdd.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }
    
    //MARK: unused methods...
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
