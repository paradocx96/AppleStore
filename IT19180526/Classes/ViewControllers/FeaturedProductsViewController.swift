//
//  FeaturedProductsViewController.swift
//  IT19180526
//
//  Created by Interactive Media on 4/23/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class FeaturedProductsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
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

extension FeaturedProductsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return featuredProductsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedProductListCollectionViewCell", for: indexPath) as! FeaturedProductListCollectionViewCell
        cell.setup(with: featuredProductsList[indexPath.row])
        return cell
    }
}

extension FeaturedProductsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(featuredProductsList[indexPath.row].name)
        
        let featuredProduct = featuredProductsList[indexPath.row]
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let productInfoViewController = storyBoard.instantiateViewController(withIdentifier: "ProductInfoViewController") as! ProductInfoViewController
        productInfoViewController.productItem = featuredProduct
        self.navigationController?.pushViewController(productInfoViewController, animated: true)
    }
}

extension FeaturedProductsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
