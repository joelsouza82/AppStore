//
//  BuscaCell.swift
//  App Store
//
//  Created by Joel de Almeida Souza on 10/04/21.
//

import UIKit

class BuscaCell: UITableViewCell {
    
    var app: App! {
        didSet {
            tituloLabel.text = app.nome
            empresaLabel.text = app.empresa
            
            DispatchQueue.main.async {
                if let url = URL(string: self.app.iconeUrl){
                    do{
                        let data = try Data(contentsOf: url)
                        self.iconeImageView.image = UIImage(data: data)
                    }catch let err {
                        print(err)
                    }
                }
            }
        }
    }
    
    let iconeImageView: UIImageView = .iconeImageView()
    let tituloLabel: UILabel = .textlabel(text: "App nome", fontSize: 18, numberOfLines: 2)
    let empresaLabel: UILabel = .textlabel(text: "Empresa nome", fontSize: 14)
    let obterButton: UIButton = .obterButton()
    
    let screenShoot1ImageView: UIImageView = .screenShootImageView()
    let screenShoot2ImageView: UIImageView = .screenShootImageView()
    let screenShoot3ImageView: UIImageView = .screenShootImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Empresa stackView
        let tituloEmpresaStackView = UIStackView(arrangedSubviews: [
                                                    tituloLabel,
                                                    empresaLabel])
        tituloEmpresaStackView.spacing = 8
        tituloEmpresaStackView.axis = .vertical
        
        // header stackView
        let headerStackView = UIStackView(arrangedSubviews: [iconeImageView,
                                                       tituloEmpresaStackView,
                                                       obterButton])
        headerStackView.spacing = 12
        headerStackView.alignment = .center
        
        // lista de screenShoots
        let screenShootStackView = UIStackView(arrangedSubviews: [screenShoot1ImageView,
                                                                  screenShoot2ImageView,
                                                                  screenShoot3ImageView])
        screenShootStackView.spacing = 12
        screenShootStackView.distribution = .fillEqually
        
        //Global screenshoots
        let globalStackView = UIStackView(arrangedSubviews: [headerStackView,
                                                             screenShootStackView])
        globalStackView.spacing = 16
        globalStackView.axis = .vertical
        
        addSubview(globalStackView)
        globalStackView.preencherSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
