//
//  VerdeView.swift
//  TelasSwift
//
//  Created by IFBIOTIC01 on 03/07/23.
//

import Foundation
import UIKit

class VerdeView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        setupVisualElements()
    }
    
    var onVermelhaTap: (() -> Void)?
    var onAzulTap: (()->Void)?

    
    
    var buttonVermelho = ButtonDefault(botao: "Ir para tela vermelha")
    var buttonAzul = ButtonDefault(botao: "Voltar para tela azul")


    
    func setupVisualElements(){
        self.addSubview(buttonAzul)
        self.addSubview(buttonVermelho)
        
        buttonVermelho.addTarget(self, action: #selector(vermelhaTap), for: .touchUpInside)
        buttonAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)



        
        NSLayoutConstraint.activate([
            
            buttonVermelho.widthAnchor.constraint(equalToConstant: 274.99),
            buttonVermelho.heightAnchor.constraint(equalToConstant: 82.64),
            buttonVermelho.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonVermelho.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            buttonVermelho.topAnchor.constraint(equalTo: self.topAnchor, constant: 241),
            
            buttonAzul.widthAnchor.constraint(equalToConstant: 274.99),
            buttonAzul.heightAnchor.constraint(equalToConstant: 82.64),
            buttonAzul.topAnchor.constraint(equalTo: buttonVermelho.bottomAnchor, constant: 25),
            buttonAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            
            
        ])
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
       private func vermelhaTap(){
           onVermelhaTap?()
       }
    
    @objc
        private func azulTap(){
            onAzulTap?()
        }
    
    
}
