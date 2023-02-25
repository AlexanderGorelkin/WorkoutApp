//
//  ViewController.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit

class OverviewController: BaseContoller {
    
    private let navBar = OverviewNavBar()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension OverviewController {
    override func setupViews() {
        super.setupViews()
        view.addSubview(navBar)
        
        
    }
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            
            
        ])
        
    }
    override func configureAppearance() {
        super.configureAppearance()
        
        navigationController?.navigationBar.isHidden = true
        
        
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
        
        
       
    }
}


