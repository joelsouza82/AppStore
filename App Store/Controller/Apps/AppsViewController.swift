//
//  AppsViewController.swift
//  App Store
//
//  Created by Joel de Almeida Souza on 02/05/21.
//  Copyright © 2021 Joel de Almeida Souza. All rights reserved.
//

import UIKit

class AppsViewController: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError()
        collectionView.backgroundColor = .red
    }
    
   
    
}
