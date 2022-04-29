//
//  HomeViewController.swift
//  IT19180526
//
//  Created by Interactive Media on 4/2/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var featuredProductsCollectionView: UICollectionView!
    @IBOutlet weak var newProductsCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        featuredProductsCollectionView.dataSource = self
        featuredProductsCollectionView.delegate = self
        featuredProductsCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        newProductsCollectionView.dataSource = self
        newProductsCollectionView.delegate = self
        newProductsCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.featuredProductsCollectionView {
            let featuredProductsCell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeFeaturedProductsCollectionViewCell.identifier, for: indexPath) as! HomeFeaturedProductsCollectionViewCell
            featuredProductsCell.setup(with: homeFeaturedProductsList[indexPath.row])
            return featuredProductsCell
        } else {
            let newProductsCell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeNewProductsCollectionViewCell.identifier, for: indexPath) as! HomeNewProductsCollectionViewCell
            newProductsCell.setup(with: homeNewProductsList[indexPath.row])
            return newProductsCell
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.featuredProductsCollectionView {
            print(homeFeaturedProductsList[indexPath.row].name)
            
            let featuredProduct = homeFeaturedProductsList[indexPath.row]
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let productInfoViewController = storyBoard.instantiateViewController(withIdentifier: "ProductInfoViewController") as! ProductInfoViewController
            productInfoViewController.productItem = featuredProduct
            self.navigationController?.pushViewController(productInfoViewController, animated: true)
            
        } else {
            print(homeNewProductsList[indexPath.row].name)
            
            let newProduct = homeNewProductsList[indexPath.row]
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let productInfoViewController = storyBoard.instantiateViewController(withIdentifier: "ProductInfoViewController") as! ProductInfoViewController
            productInfoViewController.productItem = newProduct
            self.navigationController?.pushViewController(productInfoViewController, animated: true)
        }
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.featuredProductsCollectionView {
            return CGSize(width: 200, height: 250)
        } else {
            return CGSize(width: 200, height: 250)
        }
    }
}
