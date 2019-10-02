//
//  BrandsVC+Protocal.swift
//  Task
//
//  Created by a7med on 10/2/19.
//  Copyright © 2019 a7med. All rights reserved.
//

import UIKit
extension BrandsVC: BrandsView{
    func fetchingDataSuccess() {
        table.reloadData()

    }
    
    func startSpinner() {
        spinner.isHidden = false
        spinner.startAnimating()
    }
    
    func stopSpinner() {
        spinner.isHidden = true
        spinner.stopAnimating()
    }
    
    func showError(error: String) {
        table.isHidden = true
        showMsg(Txt: error)

    }
    
    func navigate2ModelsScreen(model: [Models]) {
        print(model)
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ModelsVC") as! ModelsVC
        vc.model = model
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableInfolbl(_ txt: String) {
        table.isHidden = true
        createLabelNoResult(txt)
    }
    
}
