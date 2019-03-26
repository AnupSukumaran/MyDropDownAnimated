//
//  ViewController.swift
//  DropDownAnimated
//
//  Created by Qaptive Technologies on 26/03/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dropDown: UIButton!
    @IBOutlet weak var dropDownMenu: UITableView!
    @IBOutlet weak var tableHeight: NSLayoutConstraint!
    
    let funcs = ViewModel()
    
    let menuList: NSMutableArray = ["Red", "Blue", "Green"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropDownMenu.isHidden = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        funcs.adaptTableWithContent(self)
    }
    
    @IBAction func dropDown(_ sender: Any) {
        funcs.btnSelectionsAndTableReload(self)
    }
    
}





