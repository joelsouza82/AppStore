//
//  BaseTabBarViewController.swift
//  App Store
//
//  Created by Joel de Almeida Souza on 10/04/21.
//

import UIKit

class BaseTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hojeViewController = self.criarTabItem(viewController: UIViewController(), titulo: "Hoje", imagem: "icone-hoje")
        let appsViewController = self.criarTabItem(viewController: UIViewController(), titulo: "Apps", imagem: "icone-apps")
        let buscaViewController = self.criarTabItem(viewController: BuscaViewController(), titulo: "Busca", imagem: "icone-busca")
        
        viewControllers = [hojeViewController, appsViewController, buscaViewController]
    }

    
    func criarTabItem( viewController: UIViewController, titulo: String, imagem: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        
        viewController.navigationItem.title = titulo
        viewController.tabBarItem.title = titulo
        viewController.tabBarItem.image = UIImage(named: imagem)
        viewController.view.backgroundColor = .white
        
        return navController
        
    }
    
}
