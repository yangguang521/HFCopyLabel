//
//  DetailViewController.swift
//  HFCopyLabel
//
//  Created by HF on 2019/1/22.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Detail"
        self.edgesForExtendedLayout = []
        view.backgroundColor = UIColor.white
        
        let textField = UITextField(frame: CGRect(x: 30, y: 100, width: UIScreen.main.bounds.width-60, height: 30))
        textField.text = "UITextField"
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        //textField.selectAll(textField)
        //textField.perform(#selector(selectAll(_:)), with: textField, afterDelay: 0)
        view.addSubview(textField)
        
        let label = UILabel(frame: CGRect(x: 30, y: 150, width: UIScreen.main.bounds.width-60, height: 30))
        label.text = "学习是什么"
        label.isCopyEnable = true
        view.addSubview(label)
    }
    
    deinit {
        print("DetailViewController-deinit")
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
