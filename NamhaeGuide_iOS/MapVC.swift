//
//  MapVC.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/15.
//

import UIKit
import Kingfisher

class MapVC: UIViewController {

    @IBOutlet weak var mapImg: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        loadimg()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func loadimg(){
        let mapUrl = URL(string: "https://www.namhae.go.kr/tour/_res/tour/img/sub/tournamhae_map.png")
        mapImg.kf.setImage(with: mapUrl)
        
    }

}
