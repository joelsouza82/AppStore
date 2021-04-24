//
//  App.swift
//  App Store
//
//  Created by Joel de Almeida Souza on 24/04/21.
//

import Foundation

struct App: Decodable {
    let id: Int
    let nome: String
    let empresa: String
    let avaliacao: String?
    let iconeUrl: String
    let screenshotUrls: [String]?
}
