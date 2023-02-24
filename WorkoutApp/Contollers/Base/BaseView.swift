//
//  BaseView.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 23.02.2023.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
@objc extension BaseView {
    
    func addViews() { }
    func layoutViews() { }
    func configureViews() { }
    
    
    
}
