//
//  MapVC.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/15.
//

import UIKit
import Kingfisher

class MapViewController: UIViewController {

    @IBOutlet weak var mapScroll: UIScrollView!
    @IBOutlet weak var mapImg: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        loadimg()
        
        mapScroll.alwaysBounceVertical = false
        mapScroll.alwaysBounceHorizontal = false
        
        mapScroll.maximumZoomScale = 1.0
        mapScroll.maximumZoomScale = 3.0
        mapScroll.delegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func loadimg(){
        DispatchQueue.main.async {
            let mapUrl = URL(string: "https://www.namhae.go.kr/tour/_res/tour/img/sub/tournamhae_map.png")
            self.mapImg.kf.setImage(with: mapUrl)
        }
    }
}

extension MapViewController: UIScrollViewDelegate{
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return mapImg
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        
    }
}


