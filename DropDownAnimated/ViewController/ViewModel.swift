//
//  ViewModel.swift
//  DropDownAnimated
//
//  Created by Qaptive Technologies on 26/03/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class ViewModel: NSObject {

    //MARK: Adapt Content
    func adaptTableWithContent(_ main: ViewController) {
        main.dropDownMenu.reloadData()
        main.dropDownMenu.layoutIfNeeded()
        main.tableHeight.constant = main.dropDownMenu.contentSize.height
    }
    
    //MARK: button
    func btnSelectionsAndTableReload(_ main: ViewController) {
        main.dropDown.isSelected = !main.dropDown.isSelected
        main.dropDownMenu.reloadData()
    }
    
    //MARK: Hide or show Menu(TableView)
    func menuShowOrHide(_ main: ViewController) {
        if main.dropDown.isSelected {
            main.dropDownMenu.isHidden = false
        } else {
            main.dropDownMenu.isHidden = true
        }
    }
    
}
