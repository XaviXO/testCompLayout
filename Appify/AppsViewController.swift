//
//  AppsViewController.swift
//  Appify
//
//  Created by Javier Calderon Jr. on 4/25/20.
//  Copyright © 2020 Javier Calderon Jr. All rights reserved.
//

import UIKit

class AppsViewController: UIViewController {

    let sections = Bundle.main.decode([Section].self, from: "appstore.json")
    var collectionView: UICollectionView!
    var datasource: UICollectionViewDiffableDataSource<Section, App>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        view.addSubview(collectionView)
    }
    
}
