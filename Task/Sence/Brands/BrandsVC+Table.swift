//
//  BrandsVC+Table.swift
//  Task
//
//  Created by a7med on 10/2/19.
//  Copyright © 2019 a7med. All rights reserved.
//

import UIKit
extension BrandsVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return presenter.getBrandsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "departmentCell", for: indexPath) as! departmentCell
        presenter.configure(cell: cell, for: indexPath.row)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectBrand(indexPath.row)
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
