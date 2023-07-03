//
//  AzulCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC01 on 03/07/23.
//

import Foundation
import UIKit

class AzulCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = AzulViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        
        viewController.onVerdeTap = {
                    self.gotoVerde()
                }
        
    }
    
    func gotoVerde(){
            let coordinator = VerdeCoordinator(navigationController: navigationController)
             coordinator.start()
            
        }
}
