//
//  AnimationFactory.swift
//  DropDownAnimated
//
//  Created by Qaptive Technologies on 26/03/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit


enum AnimationFactory {
    
    
    //MARK: Fading Type Cell Animation
    static func makeFadeAnimation(duration: TimeInterval, delayFactor: Double) -> Animation {
        
        let compBlk: Animation =  { cell, indexPath, tableView ,btn  in
            
            cell.alpha = 0
            
            UIView.animate(withDuration: duration, delay: delayFactor * Double(indexPath.row), animations: {
                cell.alpha = 1
                menuShowOrHide(btn: btn, tableView: tableView)
            }, completion: { (completed) in
                print("Com = \(completed)")
            })
            
        }
        
        return compBlk
        
    }
    
    //MARK: Bouncy Type Cell Animation
    static func makeMoveUpWithBounce(rowHeight: CGFloat, duration: TimeInterval, delayFactor: Double) -> Animation {
        
        let compBlk: Animation = { cell, indexPath, tableView, btn  in
            
                cell.transform = CGAffineTransform(translationX: 0, y: rowHeight)
                menuShowOrHide(btn: btn, tableView: tableView)
                UIView.animate( withDuration: duration, delay: delayFactor * Double(indexPath.row), usingSpringWithDamping: 0.4, initialSpringVelocity: 0.1, options: [.curveEaseInOut], animations: {
                        cell.transform = CGAffineTransform(translationX: 0, y: 0)
                })
            
        }
        
        return compBlk
    }
    
    //MARK: Up With Fade Type Cell Animation
    static func makeMoveUpWithFade(rowHeight: CGFloat, duration: TimeInterval, delayFactor: Double) -> Animation {
        
        let compBlk: Animation = { cell, indexPath, tableView, btn  in
            
                    cell.transform = CGAffineTransform(translationX: 0, y: rowHeight / 2)
                    cell.alpha = 0
                    menuShowOrHide(btn: btn, tableView: tableView)
                    UIView.animate( withDuration: duration, delay: delayFactor * Double(indexPath.row), options: [.curveEaseInOut], animations: {
                            cell.transform = CGAffineTransform(translationX: 0, y: 0)
                            cell.alpha = 1
                    })
        }
        
        return compBlk
    }
    
    //MARK: Slide Type Cell Animation
    static func makeSlideIn(duration: TimeInterval, delayFactor: Double) -> Animation {
        return { cell, indexPath, tableView, btn  in
            
            cell.transform = CGAffineTransform(translationX: tableView.bounds.width, y: 0)
            menuShowOrHide(btn: btn, tableView: tableView)
            UIView.animate( withDuration: duration, delay: delayFactor * Double(indexPath.row), options: [.curveEaseInOut], animations: {
                    cell.transform = CGAffineTransform(translationX: 0, y: 0)
            })
            
        }
    }
    
    //Function To hide or show menu
    static func menuShowOrHide(btn: UIButton, tableView: UITableView) {
        if btn.isSelected {
            tableView.isHidden = false
        } else {
            tableView.isHidden = true
        }
    }
}
