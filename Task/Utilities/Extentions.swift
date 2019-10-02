//
//  Extentions.swift
//  Task
//
//  Created by a7med on 10/2/19.
//  Copyright © 2019 a7med. All rights reserved.
//

import UIKit

extension UIViewController{
   func createLabelNoResult(_ txt: String?){
        // CGRectMake has been deprecated - and should be let, not var
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width , height: 80 ))
        label.numberOfLines = 0
    
        // you will probably want to set the font (remember to use Dynamic Type!)
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        
        // and set the text color too - remember good contrast
        label.textColor = .black
        
        // may not be necessary (e.g., if the width & height match the superview)
        // if you do need to center, CGPointMake has been deprecated, so use this
        label.center = CGPoint(x: self.view.frame.width / 2.0, y: self.view.frame.height / 2.0)
        
        // this changed in Swift 3 (much better, no?)
        label.textAlignment = .center
        label.font = label.font.withSize(18)
        label.text = txt ?? "لا يوجد بيانات ."
        
        
        self.view.addSubview(label)
    }
    func showMsg(Txt: String) {
        let alert = UIAlertController(title: "Error", message: Txt, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
                    }))
        self.present(alert, animated: true, completion: nil)


    }

}
