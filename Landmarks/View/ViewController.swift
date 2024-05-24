//
//  ViewController.swift
//  Landmarks
//
//  Created by Asif Seraje on 24/5/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dataArray = [Landmarks]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "LandmarksTableViewCell", bundle: nil), forCellReuseIdentifier: "LandmarksTableViewCell")
        
        dataArray = DataParser.shared.getLandmarks()

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "LandmarksTableViewCell") as? LandmarksTableViewCell{
            cell.imgView.image = UIImage(named: dataArray[indexPath.row].imageName)
            cell.title.text = dataArray[indexPath.row].name
            cell.subTitle.text = dataArray[indexPath.row].subtitle
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }


}

