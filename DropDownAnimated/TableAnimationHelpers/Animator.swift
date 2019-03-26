//
//  Animator.swift
//  DropDownAnimated
//
//  Created by Qaptive Technologies on 26/03/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

final class Animator {
    
    private var hasAnimatedAllCells = false
    private let animation: Animation
    
    init(animation: @escaping Animation) {
        self.animation = animation
    }
    
    func animate(cell: UITableViewCell, at indexPath: IndexPath, in tableView: UITableView, btn: UIButton) {
        guard !hasAnimatedAllCells else {
            return
        }
        
        animation(cell, indexPath, tableView, btn)
        hasAnimatedAllCells = tableView.isLastVisibleCell(at: indexPath)
        
    }
    
    
    
}
