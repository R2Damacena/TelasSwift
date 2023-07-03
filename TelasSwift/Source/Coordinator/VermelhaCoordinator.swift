//
//  VermelhaCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC01 on 03/07/23.
//

import Foundation
import UIKit

class VermelhaCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = VermelhaViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onAzulTap = {
            self.gotoAzul()
        }
        viewController.onVerdeTap = {
            self.gotoVerde()
        }
    }
    
    func gotoAzul(){
        navigationController.popToRootViewController(animated: true)
        
    }
    
    func gotoVerde(){
        self.navigationController.popViewController(animated: true)
        
    }
}
