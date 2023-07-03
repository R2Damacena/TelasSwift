//
//  AzulViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC01 on 03/07/23.
//

import Foundation
import UIKit

class AzulViewController: UIViewController{
    
    var onVerdeTap: (() -> Void)?

    
    lazy var azulView: AzulView = {
        let azulView = AzulView()
        azulView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        return azulView
    }()
    override func loadView() {
        self.view = azulView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Azul"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
