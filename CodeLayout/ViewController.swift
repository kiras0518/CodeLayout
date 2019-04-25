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
       
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = UIColor.green
   
        view.widthAnchor.constraint(equalToConstant: 420).isActive = true
        
        view.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        return view
    }()
    
    lazy var appImage: UIImageView = {
        
        let image = UIImageView()
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.backgroundColor = UIColor.red

        image.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        image.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        //label.backgroundColor = UIColor.yellow
        
        label.textAlignment = .left
        
        label.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        return label
    }()
    
    lazy var typeLabel: UILabel = {
        
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        //label.backgroundColor = UIColor.red
        
        label.textAlignment = .left
        
        label.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        return label
    }()
    
    lazy var sizeLabel: UILabel = {
       
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        //label.backgroundColor = UIColor.blue
        
        label.textAlignment = .left
        
        label.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        return label
    }()
    
    lazy var getButton: UIButton = {
     
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Get", for: .normal)
        
        button.backgroundColor = UIColor.darkGray
        
        button.layer.cornerRadius = 15
        
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        return button
    }()
    
    lazy var myImage: UIImageView = {
        
        let image = UIImageView()
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.backgroundColor = UIColor.blue
        
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        image.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        return image
    }()

    lazy var myImage1: UIImageView = {
        
        let image = UIImageView()
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.backgroundColor = UIColor.blue
        
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        image.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        return image
    }()
    
    lazy var myImage2: UIImageView = {
        let image = UIImageView()
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.backgroundColor = UIColor.blue
        
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        image.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
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
        
        appImage.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 10).isActive = true
        appImage.topAnchor.constraint(equalTo: backView.topAnchor, constant: 10).isActive = true
        
        getButton.leftAnchor.constraint(equalTo: appImage.rightAnchor, constant: 220).isActive = true
        getButton.topAnchor.constraint(equalTo: backView.topAnchor, constant: 35).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: backView.topAnchor, constant: 5).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: appImage.rightAnchor, constant: 30).isActive = true
        
        typeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1).isActive = true
        typeLabel.leftAnchor.constraint(equalTo: appImage.rightAnchor, constant: 30).isActive = true
        
        sizeLabel.topAnchor.constraint(equalTo: typeLabel.bottomAnchor, constant: 1).isActive = true
        sizeLabel.leftAnchor.constraint(equalTo: appImage.rightAnchor, constant: 30).isActive = true
        
        myImage.topAnchor.constraint(equalTo: appImage.bottomAnchor, constant: 10).isActive = true
        myImage.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 10).isActive = true
        
        myImage1.topAnchor.constraint(equalTo: appImage.bottomAnchor, constant: 10).isActive = true
        myImage1.leftAnchor.constraint(equalTo: myImage.rightAnchor, constant: 45).isActive = true
        
        myImage2.topAnchor.constraint(equalTo: appImage.bottomAnchor, constant: 10).isActive = true
        myImage2.leftAnchor.constraint(equalTo: myImage1.rightAnchor, constant: 45).isActive = true
        
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
        tableView.separatorColor = UIColor.clear
        //tableView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
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
            cell.textLabel?.text = "\(indexPath.row)"
            
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
