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
    override func addView() {
        super.addView()
        view.addSubview(navBar)
        
        
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            
            
        ])
        
    }
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        
        
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
        
        
       
    }
}


