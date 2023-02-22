//
//  SessionContoller.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit

class SessionController: BaseContoller {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
    
    override func navBarLeftButtonHandler() {
        print("Session navbar left button")
    }


}
