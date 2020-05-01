//
//  HomeViewController.swift
//  Foodie
//
//  Created by Robert Fish on 28/4/20.
//  Copyright © 2020 Robert Fish. All rights reserved.
//

import UIKit
import CoreLocation

class HomeViewController: UIViewController {
    
    struct Category {
        let name: String
        let imageName: String
    }
    
    @IBOutlet weak var CategoryCollectionView: UICollectionView!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    fileprivate var categories = [
        Category(name: "Delivery", imageName: "delivery"),
        Category(name: "Dine-Out", imageName: "dineout"),
        Category(name: "Night Life", imageName: "nightlife"),
        Category(name: "Take-Away", imageName: "takeaway"),
        Category(name: "Cafes", imageName: "cafe"),
        Category(name: "Daily Menus", imageName: "dailymenu"),
        Category(name: "Breakfast", imageName: "breakfast"),
        Category(name: "Lunch", imageName: "lunch"),
        Category(name: "Dinner", imageName: "dinner"),
        Category(name: "Pub & Bar", imageName: "bar")
    ]
    
    
    let cellIdentifier = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        getTime()
        setupCategoryCollection()
    }
    
    func setupCategoryCollection(){
        CategoryCollectionView.delegate = self
        CategoryCollectionView.dataSource = self
        self.CategoryCollectionView.register(UINib.init(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    
    func getTime(){
        let calendar = Calendar.current
        let time=calendar.dateComponents([.hour,.minute,.second], from: Date())
        
        if time.hour! < 12 {
            welcomeLabel.text = "Good Morning,"
        }
            
        else if time.hour! > 12 && time.hour! < 17 {
            welcomeLabel.text = "Good Afternoon,"
        }
            
        else {
            welcomeLabel.text = "Good Evening,"
        }
        
    }
    
}


extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CategoryCollectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CategoryCollectionViewCell
        cell.cellLabel.text = categories[indexPath.row].name
        cell.cellImage.image = UIImage(named: "\(categories[indexPath.row].imageName)")
        return cell
    }
    
    
}
