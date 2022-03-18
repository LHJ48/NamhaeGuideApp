//
//  ViewController.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func mapMove(_ sender: Any) {
        let mapVC = MapVC(nibName: "MapVC", bundle: nil)
        self.navigationController?.pushViewController(mapVC, animated: true)
    }
    
}

