//
//  VerdeCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC01 on 03/07/23.
//

import Foundation
import UIKit

class VerdeCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = VerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        
        viewController.onVermelhaTap = {
            self.gotoVermelha()
        }
        
        viewController.onAzulTap = {
            self.gotoAzul()
        }
    }
    
    func gotoVermelha(){
        let coordinator = VermelhaCoordinator(navigationController: navigationController)
         coordinator.start()
        
    }
    
    func gotoAzul(){
        self.navigationController.popViewController(animated: true)
        
    }
}
