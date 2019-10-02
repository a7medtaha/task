//
//  ModelsVC.swift
//  Task
//
//  Created by a7med on 10/2/19.
//  Copyright © 2019 a7med. All rights reserved.
//

import UIKit

class ModelsVC: UIViewController {
    var model: [Models]!
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
