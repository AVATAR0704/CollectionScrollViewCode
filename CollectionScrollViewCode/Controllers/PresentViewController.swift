//
//  PresentViewController.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 16/04/22.
//

import UIKit

class PresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       startFunction()
    }
    

    
    //MARK: Methods
    
    func startFunction() {
        view.backgroundColor = UIColor.white
        
        
        startNavigation()
    }

    
    func startNavigation() {
        title = "Product"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(goExit))
    }
    
    
    @objc func goExit(){
        dismiss(animated: true)
    }
    
    
}
