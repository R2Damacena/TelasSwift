//
//  VerdeViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC01 on 03/07/23.
//

import Foundation
import UIKit

class VerdeViewController: UIViewController{
    
    var onVermelhaTap: (() -> Void)?
    var onAzulTap: (()->Void)?

    
    lazy var verdeView: VerdeView = {
        let verdeView = VerdeView()
        verdeView.onVermelhaTap = {
            self.onVermelhaTap?()
        }
        verdeView.onAzulTap = {
            self.onAzulTap?()
        }
        
        return verdeView
    }()
    
    
    
    override func loadView() {
        self.view = verdeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Verde"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
