//
//  HomeViewController.swift
//  CollectionScrollViewCode
//
//  Created by Macservis on 15/04/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //MARK: DataBase
    
    var serverData: [Product] = []
    
    //MARK: Propertys
    let nmcollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30) / 2, height: (UIScreen.main.bounds.height - 100) / 4)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        let collectionView = UICollectionView(frame: UIScreen.main.bounds, collectionViewLayout: layout)
      //  let collectionView = UICollectionView()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    let nmlayout: UICollectionViewFlowLayout = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 40) / 3, height: (UIScreen.main.bounds.height - 100) / 3)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return layout
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }
    
    
    
    //MARK: Methods
    func  startFunction(){
        self.view.backgroundColor = UIColor.white
        
        //nmcollectionView.backgroundView = UIImageView(image: UIImage(named: "im_backview8"))
        nmcollectionView.backgroundColor = UIColor.white
        self.view.addSubview(nmcollectionView)
        
        setCollectionView()
        setServer()
        startNavigation()
    }
   
    func startNavigation() {
        title = "Online Shop"
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register", style: UIBarButtonItem.Style.plain, target: self, action: #selector(goRegister))
    }

    func  setServer() {
        
        serverData.append(Product(name: "naushnik", price: "10", imageStr: "im_product1"))
        serverData.append(Product(name: "car", price: "1000", imageStr: "im_product2"))
        serverData.append(Product(name: "nike", price: "100", imageStr: "im_product3"))
        serverData.append(Product(name: "song", price: "11", imageStr: "im_product4"))
        serverData.append(Product(name: "clock", price: "100", imageStr: "im_product5"))
        serverData.append(Product(name: "velik", price: "200", imageStr: "im_product6"))
        serverData.append(Product(name: "camera", price: "300", imageStr: "im_product7"))
        serverData.append(Product(name: "naushnik", price: "10", imageStr: "im_product1"))
        serverData.append(Product(name: "car", price: "1000", imageStr: "im_product2"))
        serverData.append(Product(name: "nike", price: "100", imageStr: "im_product3"))
        serverData.append(Product(name: "song", price: "11", imageStr: "im_product4"))
        serverData.append(Product(name: "clock", price: "100", imageStr: "im_product5"))
        serverData.append(Product(name: "velik", price: "200", imageStr: "im_product6"))
        serverData.append(Product(name: "camera", price: "300", imageStr: "im_product7"))
        serverData.append(Product(name: "naushnik", price: "10", imageStr: "im_product1"))
        serverData.append(Product(name: "car", price: "1000", imageStr: "im_product2"))
        serverData.append(Product(name: "nike", price: "100", imageStr: "im_product3"))
        serverData.append(Product(name: "song", price: "11", imageStr: "im_product4"))
        serverData.append(Product(name: "clock", price: "100", imageStr: "im_product5"))
        serverData.append(Product(name: "velik", price: "200", imageStr: "im_product6"))
        serverData.append(Product(name: "camera", price: "300", imageStr: "im_product7"))
        serverData.append(Product(name: "naushnik", price: "10", imageStr: "im_product1"))
        serverData.append(Product(name: "car", price: "1000", imageStr: "im_product2"))
        serverData.append(Product(name: "nike", price: "100", imageStr: "im_product3"))
        serverData.append(Product(name: "song", price: "11", imageStr: "im_product4"))
        serverData.append(Product(name: "clock", price: "100", imageStr: "im_product5"))
        serverData.append(Product(name: "velik", price: "200", imageStr: "im_product6"))
        serverData.append(Product(name: "camera", price: "300", imageStr: "im_product7"))
        
        
    }
    
    
    
    func setCollectionView() {
        nmcollectionView.delegate = self
        nmcollectionView.dataSource = self
        nmcollectionView.register(ShopCollectionViewCell.self, forCellWithReuseIdentifier: ShopCollectionViewCell.identifier)
      //  nmcollectionView.collectionViewLayout = nmlayout
        
//        nmcollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        nmcollectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        nmcollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        nmcollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
    }
    
    //MARK: objc Methods
    
    @objc func goRegister() {
        navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
    
    
    
    
    //MARK: CollectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return serverData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = serverData[indexPath.row]
        let cell = nmcollectionView.dequeueReusableCell(withReuseIdentifier: ShopCollectionViewCell.identifier, for: indexPath) as! ShopCollectionViewCell
        cell.nmNamelabel.text = item.name
        cell.nmPricelabel.text = "\(item.price ?? "null") $"
        cell.nmImageView.image = UIImage(named: item.imageStr!)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        present(UINavigationController(rootViewController: PresentViewController()), animated: true)
    }
    
}
