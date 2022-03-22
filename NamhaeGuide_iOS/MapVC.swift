//
//  MapVC.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/15.
//

import UIKit
import Kingfisher

class MapVC: UIViewController {

    @IBOutlet weak var mapScroll: UIScrollView!
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
        
        mapScroll.delegate = self
        mapScroll.zoomScale = 1.0
        mapScroll.minimumZoomScale = 1.0
        mapScroll.maximumZoomScale = 2.0
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(MapVC.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        mapImg.transform = mapImg.transform.scaledBy(x: pinch.scale, y: pinch.scale) // 이미지 imgPinch를 scale에 맞게 변환
        pinch.scale = 1 // 다음 변환을 위하여 핀치의 스케일 속성을 1로 설정
    }

}

extension MapVC: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.mapImg
    }
}

