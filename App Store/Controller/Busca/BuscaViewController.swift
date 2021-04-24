//
//  BuscaViewController.swift
//  App Store
//
//  Created by Joel de Almeida Souza on 10/04/21.
//

import UIKit

class BuscaViewController: UITableViewController, UISearchBarDelegate {
    
    let cellId = "cellId"
    
    let searchController = UISearchController(searchResultsController: nil)
    
    var apps: [App] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(BuscaCell.self, forCellReuseIdentifier: cellId)
        self.configurarSearchBar()
        
        self.searchController.obscuresBackgroundDuringPresentation = false
        self.searchController.searchBar.placeholder = "App Store"
        self.searchController.searchBar.delegate = self
    }
    
    func  configurarSearchBar() {
        navigationItem.searchController = self.searchController
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.buscaApps(texto: searchText)
    }
}
extension BuscaViewController {
    
    func buscaApps(texto: String) {
       
        BuscaService.shared.buscaApps(texto: texto) { (apps, err) in
            if let apps = apps {
                DispatchQueue.main.async {
                    self.apps = apps
                    self.tableView.reloadData()
                }
            }
            
        }
    }
}

extension BuscaViewController {
    
    // Altura da tableViewCell
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return .init(tableView.bounds.width * 0.8)
    }
    
    // Quantidades de linhas da tableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.apps.count
    }
    // Identificar da tableViewCell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BuscaCell
        cell.app = self.apps[indexPath.item]
        return cell
    }
}
