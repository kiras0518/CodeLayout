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
        let view = UIView(frame: CGRect(x: 10, y: 6, width: self.frame.width - 20, height: self.frame.height - 20))
        view.backgroundColor = UIColor.green
        return view
    }()
    
    lazy var appImage: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 8, y: 8, width: 80, height: 80))
        image.backgroundColor = UIColor.red
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
        let button = UIButton(frame: CGRect(x: 300, y: 42, width: 70, height: 30))
        button.setTitle("Get", for: .normal)
        button.backgroundColor = UIColor.darkGray
        button.layer.cornerRadius = 15
        return button
    }()
    
    lazy var myImage: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 8, y: 120, width: 100, height: 200))
        image.backgroundColor = UIColor.blue
        return image
    }()

    lazy var myImage1: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 150, y: 120, width: 100, height: 200))
        image.backgroundColor = UIColor.blue
        return image
    }()
    
    lazy var myImage2: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 285, y: 120, width: 100, height: 200))
        image.backgroundColor = UIColor.blue
        return image
    }()
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(backView)
        backView.addSubview(appImage)
        backView.addSubview(nameLabel)
        backView.addSubview(typeLabel)
        backView.addSubview(sizeLabel)
        backView.addSubview(getButton)
        backView.addSubview(myImage)
        backView.addSubview(myImage1)
        backView.addSubview(myImage2)
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

    var infoArray = [InfoModel]()
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationItem.title = "Search"
        
        setTableView()

        infoArray.append(InfoModel(appIamge: UIImage(named: "drop")!, appName: "App Name", typeLabel: "Photos & Video", sizeLabel: "9.26M"))
       
        infoArray.append(InfoModel(appIamge: UIImage(named: "drop")!, appName: "App Name", typeLabel: "Photos & Video", sizeLabel: "9.26M"))
        
        infoArray.append(InfoModel(appIamge: UIImage(named: "drop")!, appName: "App Name", typeLabel: "Photos & Video", sizeLabel: "9.26M"))

    }
    
    func setTableView() {
        tableView.frame = self.view.frame
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
        return 350
    }
    
}
