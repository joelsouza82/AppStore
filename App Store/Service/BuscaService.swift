//
//  BuscaService.swift
//  App Store
//
//  Created by Joel de Almeida Souza on 10/04/21.
//

import UIKit

class BuscaService {
    
    static let shared = BuscaService()
    
    func buscaApps(texto: String) {
        print("BuscaService \(texto)")
    }
}
