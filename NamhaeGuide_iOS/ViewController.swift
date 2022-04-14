//
//  ViewController.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/14.
//

import UIKit
import SwiftSoup

class ViewController: UIViewController {

    @IBOutlet weak var coronaNow: UIView!{
        didSet{
            coronaNow.layer.cornerRadius = 30
            //#6386a9
            coronaNow.layer.backgroundColor = UIColor(hexString: "#6386a9").cgColor
        }
    }
    
    @IBOutlet weak var subTotalView: UIView!{
        didSet{
            subTotalView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var subTotalNameLabel: UILabel!{
        didSet{
            subTotalNameLabel.layer.cornerRadius = 30
            subTotalNameLabel.layer.backgroundColor = UIColor(hexString: "#55a75f").cgColor
        }
    }
    @IBOutlet weak var confirmedCaseView: UIView!{
        didSet{
            confirmedCaseView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var confirmedCaseNameLabel: UILabel!{
        didSet{
            confirmedCaseNameLabel.layer.cornerRadius = 30
            confirmedCaseNameLabel.layer.backgroundColor = UIColor(hexString: "#4273de").cgColor
        }
    }
    @IBOutlet weak var underInspectionView: UIView!{
        didSet{
            underInspectionView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var underInspectionNameLabel: UILabel!{
        didSet{
            underInspectionNameLabel.layer.cornerRadius = 30
            underInspectionNameLabel.layer.backgroundColor = UIColor(hexString: "#e46969").cgColor
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func mapMove(_ sender: Any) {
        let mapVC = MapVC(nibName: "MapVC", bundle: nil)
        self.navigationController?.pushViewController(mapVC, animated: true)
    }
    
    @IBAction func publicOfficeMove(_ sender: Any) {
        let publicOfficeVC = UIStoryboard(name: "PublicOfficesVC", bundle: Bundle.main).instantiateViewController(withIdentifier: "PublicOfficesVC") as! PublicOfficesVC
        self.navigationController?.pushViewController(publicOfficeVC, animated: true)
    }
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
