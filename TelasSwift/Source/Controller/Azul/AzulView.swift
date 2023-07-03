//
//  AzulView.swift
//  TelasSwift
//
//  Created by IFBIOTIC01 on 03/07/23.
//

import Foundation
import UIKit

class AzulView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        setupVisualElements()
    }
    
    
    var onVerdeTap: (() -> Void)?
    
    
    var buttonVerde = ButtonDefault(botao: "Ir para tela verde")
    
    func setupVisualElements(){
        self.addSubview(buttonVerde)
        
        buttonVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            buttonVerde.widthAnchor.constraint(equalToConstant: 274.99),
            buttonVerde.heightAnchor.constraint(equalToConstant: 82.64),
            buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            buttonVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 241),
            
            
            
        ])
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc
        private func verdeTap(){
            onVerdeTap?()
        }
}
