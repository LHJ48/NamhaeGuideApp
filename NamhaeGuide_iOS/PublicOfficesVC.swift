//
//  PublicOfficesVC.swift
//  NamhaeGuide_iOS
//
//  Created by finger on 2022/03/23.
//

import UIKit

class PublicOfficesVC: UIViewController {
    
    @IBOutlet weak var officetable: UITableView!
    
    var officeModel: PublicOfficeModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestData()
        officetable.delegate = self
        officetable.dataSource = self
    }
    
    func requestData(){
        let urlString = "https://api.odcloud.kr/api/15013793/v1/uddi:0a04c5a1-d479-413b-801f-e83d962857fe_201906241753?page=1&perPage=10&serviceKey=oQC35%2BVwb95RROlWy%2Fx%2FWPoixr6I6dAkvLsr4IWwRWrYf2tM5MulRDsir8N8aJJ3DJOMgA4aSIeTYsajqkCAPA%3D%3D"
        
        let components = URLComponents(string: urlString)
        
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
        
        guard let url = components?.url else{
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: request){ data, response, error in
            print ((response as! HTTPURLResponse).statusCode)
            
            if let hasData = data {
                do{
                    self.officeModel = try JSONDecoder().decode(PublicOfficeModel.self, from: hasData)
                    print(self.officeModel ?? "no data")
                    DispatchQueue.main.async {
                        self.officetable.reloadData()
                    }
                }catch{
                    print(error)
                }
            }
        }
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
}
extension PublicOfficesVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.officeModel?.data.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(UINib(nibName: "PublicOfficesCell", bundle: nil), forCellReuseIdentifier: "PublicOfficesCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "PublicOfficesCell") as! PublicOfficesCell
        cell.officeName.text = self.officeModel?.data[indexPath.row].officeName1
        cell.officeTelnumber.text = self.officeModel?.data[indexPath.row].officeTel1
        cell.officeAddress.text = self.officeModel?.data[indexPath.row].officeAddress1
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    
}
