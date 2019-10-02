//
//  ModelsVC+Table.swift
//  Task
//
//  Created by a7med on 10/2/19.
//  Copyright © 2019 a7med. All rights reserved.
//

import UIKit
extension ModelsVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "departmentCell", for: indexPath) as! departmentCell
        cell.displayItem(name: model[indexPath.row].name ?? "", imageUrl: model[indexPath.row].image ?? "")
        return cell
    }
    
    func setupTableView() {
        table.rowHeight = 200
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: "departmentCell", bundle: nil), forCellReuseIdentifier: "departmentCell")
        //        table.separatorStyle = .none
        table.tableFooterView = UIView(frame: .zero)
        
    }
}
