//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseContoller: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureAppearance()
        setupViews()
        constraintViews()
    }
    
}

@objc extension BaseContoller {
    
    
    func setupViews() {
        
    }
    
    func constraintViews() { }
    
    func configureAppearance() {
        view.backgroundColor = Resources.Colors.background
    }
    func navBarLeftButtonHandler() {
        print("nav bar left button")
    }
    func navBarRightButtonHandler() {
        print("nav bar right button")
    }
    
    
    
}
extension BaseContoller {
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.nonactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
            
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    func setTitleForNavBarButton(_ title: String, at position: NavBarPosition) {
        
        switch position {
        case .left:
            (navigationItem.leftBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        case .right:
            (navigationItem.rightBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        }
//        view.layoutIfNeeded()
    }
}

