//
//  VermelhaView.swift
//  TelasSwift
//
//  Created by IFBIOTIC01 on 03/07/23.
//

import Foundation
import UIKit

class VermelhaView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupVisualElements()
    }
    
    
    var onAzulTap: (()->Void)?
    var onVerdeTap: (()->Void)?


    
    var buttonAzul = ButtonDefault(botao: "Ir para tela azul")
    
    var buttonVerde = ButtonDefault(botao: "Voltar para tela verde")

    
    func setupVisualElements(){
        self.addSubview(buttonAzul)
        self.addSubview(buttonVerde)
        
        buttonAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        buttonVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)

        
        NSLayoutConstraint.activate([
            
            buttonAzul.widthAnchor.constraint(equalToConstant: 274.99),
            buttonAzul.heightAnchor.constraint(equalToConstant: 82.64),
            buttonAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            buttonAzul.topAnchor.constraint(equalTo: self.topAnchor, constant: 241),
            
            buttonVerde.widthAnchor.constraint(equalToConstant: 274.99),
            buttonVerde.heightAnchor.constraint(equalToConstant: 82.64),
            buttonVerde.topAnchor.constraint(equalTo: buttonAzul.bottomAnchor, constant: 25),
            buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            
            
        ])
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
        private func azulTap(){
            onAzulTap?()
        }
    
    @objc
        private func verdeTap(){
            onVerdeTap?()
        }

}
