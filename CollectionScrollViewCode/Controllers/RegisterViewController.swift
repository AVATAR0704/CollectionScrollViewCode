//
//  RegisterViewController.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 15/04/22.
//

import UIKit

class RegisterViewController: UIViewController {

    //Propertys
    let nmScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentMode = .scaleToFill
        return scrollView
    }()
    
    let nmbackView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    
    let nmimageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "im_register")
        return imageView
    }()
    
    let fullName: UILabel =  UILabel.setLabell(text: "Fullname", color: nil, alignment: NSTextAlignment.left, font: 25)
    let fullNameTextField: UITextField = UITextField.setTextField(text: nil, textColor: nil, placeolder: "Fullname", keyboardType: nil)
    
    let middleName: UILabel =  UILabel.setLabell(text: "MiddleName", color: nil, alignment: NSTextAlignment.left, font: 25)
    let middleNameTextField: UITextField = UITextField.setTextField(text: nil, textColor: nil, placeolder: "MiddleName", keyboardType: nil)
    
    let lastName: UILabel =  UILabel.setLabell(text: "LastName", color: nil, alignment: NSTextAlignment.left, font: 25)
    let lastNameTextField: UITextField = UITextField.setTextField(text: nil, textColor: nil, placeolder: "LastName", keyboardType: nil)
    
    let email: UILabel =  UILabel.setLabell(text: "Email", color: nil, alignment: NSTextAlignment.left, font: 25)
    let emailTextField: UITextField = UITextField.setTextField(text: nil, textColor: nil, placeolder: "Email", keyboardType: nil)
    
    let phone: UILabel =  UILabel.setLabell(text: "Phone", color: nil, alignment: NSTextAlignment.left, font: 25)
    let phoneTextField: UITextField = UITextField.setTextField(text: nil, textColor: nil, placeolder: "Phone", keyboardType: .phonePad)
    
    let adress1: UILabel =  UILabel.setLabell(text: "Adress1", color: nil, alignment: NSTextAlignment.left, font: 25)
    let adress1TextField: UITextField = UITextField.setTextField(text: nil, textColor: nil, placeolder: "Adress1", keyboardType: nil)
    
    let adress2: UILabel =  UILabel.setLabell(text: "Adress2", color: nil, alignment: NSTextAlignment.left, font: 25)
    let adress2TextField: UITextField = UITextField.setTextField(text: nil, textColor: nil, placeolder: "Adress2", keyboardType: nil)
    
    let postal: UILabel =  UILabel.setLabell(text: "Postal", color: nil, alignment: NSTextAlignment.left, font: 25)
    let postalTextField: UITextField = UITextField.setTextField(text: nil, textColor: nil, placeolder: "Postal", keyboardType: nil)
    
    
    
    let fullNameStackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: 0, distribution: UIStackView.Distribution.fillEqually)
    
    let middleNameStackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: 0, distribution: UIStackView.Distribution.fillEqually)
    
    let lastNameStackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: 0, distribution: UIStackView.Distribution.fillEqually)
    
    let emailStackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: 0, distribution: UIStackView.Distribution.fillEqually)
    
    let phoneStackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: 0, distribution: UIStackView.Distribution.fillEqually)
    
    let adress1StackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: 0, distribution: UIStackView.Distribution.fillEqually)
    
    let adress2StackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: 0, distribution: UIStackView.Distribution.fillEqually)
    
    let postalStackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: 0, distribution: UIStackView.Distribution.fillEqually)
    
  
    
    
    
    
    let umumStackView: UIStackView = UIStackView.createStackView(axis: .vertical, spacing: nil, distribution: .fillEqually)
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }
    
    //MARK: Methods
    func  startFunction(){
        self.view.backgroundColor = UIColor.white
        
        
        startNavigation()
        startConstraint()
        hideKeyboardWhenTappedAround()
    }
   
    
    
    func startNavigation() {
        title = "Registration"
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(goHome))
    }
 
    func  startConstraint() {
        
        view.addSubview(nmScrollView)
        self.view.ichigaOl(view: nmScrollView,constant: 0)
        
        nmScrollView.addSubview(nmbackView)
        nmScrollView.ichigaOl(view: nmbackView, constant: 0)
        
        nmbackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        nmbackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.2).isActive = true
        
        
        nmbackView.addSubview(nmimageView)
        nmimageView.leftAnchor.constraint(equalTo: nmbackView.leftAnchor).isActive = true
        nmimageView.rightAnchor.constraint(equalTo: nmbackView.rightAnchor).isActive = true
        nmimageView.topAnchor.constraint(equalTo: nmbackView.topAnchor).isActive = true
        nmimageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: fullNameStackView, views: [fullName,fullNameTextField])
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: middleNameStackView, views: [middleName,middleNameTextField])
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: lastNameStackView, views: [lastName,lastNameTextField])
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: emailStackView, views: [email,emailTextField])
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: phoneStackView, views: [phone,phoneTextField])
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: adress1StackView, views: [adress1,adress1TextField])
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: adress2StackView, views: [adress2,adress2TextField])
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: postalStackView, views: [postal,postalTextField])
        
        
        
        
        UIStackView.setAddedViewsAndSubViewInStackView(stackview: umumStackView, views: [fullNameStackView,middleNameStackView,lastNameStackView,emailStackView,phoneStackView,adress1StackView,adress2StackView,postalStackView])
        
        
        self.nmbackView.addSubview(umumStackView)
       
        umumStackView.leftAnchor.constraint(equalTo: nmbackView.leftAnchor,constant: 20).isActive = true
        umumStackView.rightAnchor.constraint(equalTo: nmbackView.rightAnchor,constant: -20).isActive = true
        umumStackView.bottomAnchor.constraint(equalTo: nmbackView.bottomAnchor,constant: -20).isActive = true
        umumStackView.topAnchor.constraint(equalTo: nmimageView.bottomAnchor,constant: 20).isActive = true
        
        //fullName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
   
    
    //MARK: objc Methods
    
    @objc func goHome() {
        navigationController?.popViewController(animated: true)
    }

    
  
    
}







