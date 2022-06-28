//
//  ViewController.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/14.
//

import UIKit
import SwiftSoup

class MainViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func mapMove(_ sender: Any) {
        let target = self.storyboard?.instantiateViewController(withIdentifier: "MapViewController")
        self.navigationController?.pushViewController(target!, animated: true)
    }
    
    @IBAction func publicOfficeMove(_ sender: Any) {
        let target = UIStoryboard(name: "PublicOffices", bundle: Bundle.main).instantiateViewController(withIdentifier: "PublicOfficesViewController") as! PublicOfficesViewController
        self.navigationController?.pushViewController(target, animated: true)
    }
}


