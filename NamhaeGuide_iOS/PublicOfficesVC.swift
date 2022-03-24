//
//  PublicOfficesVC.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/23.
//

import UIKit

class PublicOfficesVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PublicOfficesCell") as! PublicOfficesCell
        return cell
    }
    
}
