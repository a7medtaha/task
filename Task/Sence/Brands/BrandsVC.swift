//
//  BrandsVC.swift
//  Task
//
//  Created by a7med on 10/2/19.
//  Copyright © 2019 a7med. All rights reserved.
//

import UIKit

class BrandsVC: UIViewController {
    var presenter : BrandsVCPresenter!

    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = BrandsVCPresenter(view: self)
        presenter.viewDidLoad()
        setupTableView()

        // Do any additional setup after loading the view.
    }
    


}
