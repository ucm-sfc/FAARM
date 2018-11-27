//
//  FinAidFormController.swift
//  FAARM
//
//  Created by Christopher Villanueva on 5/9/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class FinAidFormController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var returnButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "back_arrow").withRenderingMode(.alwaysTemplate), for: .normal)
        button.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        button.tintColor = .white
        button.backgroundColor = .ucmBlue
        return button
    }()
    
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "2018-19 Financial Forms"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .white
        label.backgroundColor = .ucmBlue
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let tableView: UITableView = {
        let tv = UITableView(frame: .zero)
        tv.backgroundColor = .ucmBlue
        return tv
    }()
    
   private let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI(){
        
         view.backgroundColor = .ucmBlue
         let customNavigationBar = setupNavBar(imageForLogo: #imageLiteral(resourceName: "FinAidTitle"), viewForAnchor: view)
        
        view.addSubview(returnButton)
        returnButton.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 75, height: 75)
        
        view.addSubview(headerLabel)
        headerLabel.anchor(top: customNavigationBar.bottomAnchor, paddingTop: 0, left: returnButton.rightAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: 0, width: 0, height: 75)
        
        view.addSubview(tableView)
        tableView.anchor(top: headerLabel.bottomAnchor, paddingTop: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBotton: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 0)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .ucmGold
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
}
