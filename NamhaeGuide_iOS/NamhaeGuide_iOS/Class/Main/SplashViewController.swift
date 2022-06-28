//
//  SplashViewController.swift
//  NamhaeGuide_iOS
//
//  Created by LeeHoJun on 2022/06/20.
//

import UIKit

class SplashViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        moveMainViewController()
    }
    
    func moveMainViewController(){
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
            let target = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController")
            self.navigationController?.pushViewController(target!, animated: true)
        }
    }
}
