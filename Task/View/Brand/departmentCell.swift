//
//  departmentCell.swift
//  hunter
//
//  Created by iMac on 7/16/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import SDWebImage
class departmentCell: UITableViewCell,BrandsCellView {
   
    
    
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func displayItem(name: String, imageUrl: String) {
        namelbl.text = name
        if imageUrl == "" {
            photo.image = UIImage(named: "car")
        }else{
            DispatchQueue.main.async {
                self.photo.sd_setImage(with: URL(string: imageUrl), completed: nil)
            }
        }
    }
   
}
