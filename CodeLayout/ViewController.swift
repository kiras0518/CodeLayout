//
//  ViewController.swift
//  CodeLayout
//
//  Created by YU on 2019/4/23.
//  Copyright © 2019 ameyo. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {
    
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 10, y: 6, width: self.frame.width - 20, height: 110))
        view.backgroundColor = UIColor.green
        return view
    }()
    
    lazy var appImage: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 4, y: 4, width: 80, height: 80))
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 116, y: 8, width: backView.frame.width - 116, height: 30))
        label.textAlignment = .left
        return label
    }()
    
    lazy var typeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 116, y: 42, width: backView.frame.width - 116, height: 30))
        label.textAlignment = .left
        return label
    }()
    
    lazy var sizeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 116, y: 76, width: backView.frame.width - 116, height: 30))
        label.textAlignment = .left
        return label
    }()
    
    lazy var getButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 300, y: 42, width: 40, height: 20))
        return button
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(backView)
        backView.addSubview(appImage)
        backView.addSubview(nameLabel)
        backView.addSubview(typeLabel)
        backView.addSubview(sizeLabel)
        backView.addSubview(getButton)
        
    }
}

class InfoModel {
    var appImage: UIImage?
    var appName: String?
    var typeLabel: String?
    var sizeLabel: String?
    
    init(appIamge: UIImage, appName: String, typeLabel: String, sizeLabel: String) {
        self.appImage = appIamge
        self.appName = appName
        self.typeLabel = typeLabel
        self.sizeLabel = sizeLabel
    }
}

class ViewController: UIViewController {

//    var info = ["APP NAME","Photos & Video","9.26M"]

    var infoArray = [InfoModel]()
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Search"
        
        setTableView()

        infoArray.append(InfoModel(appIamge: UIImage(named: "drop")!, appName: "App Name", typeLabel: "Photos & Video", sizeLabel: "9.26M"))
        
        print(infoArray)

    }
    
    func setTableView() {
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.separatorColor = UIColor.clear
        tableView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        self.view.addSubview(tableView)
        
        tableView.register(FeedCell.self, forCellReuseIdentifier: "Cell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? FeedCell  {
            
            cell.appImage.image = infoArray[indexPath.row].appImage
            cell.nameLabel.text = infoArray[indexPath.row].appName
            cell.typeLabel.text = infoArray[indexPath.row].typeLabel
            cell.sizeLabel.text = infoArray[indexPath.row].sizeLabel
            //cell.textLabel?.text = "\(indexPath.row)"
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
