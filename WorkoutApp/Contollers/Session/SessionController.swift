//
//  SessionContoller.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit

class SessionController: BaseContoller {
    private let timerView: BaseInfoView = {
        let view = BaseInfoView()
        return view
    }()

    


}
extension SessionController {
    
    override func setupViews() {
        super.setupViews()
        view.addView(timerView)
    }
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
        
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
    }
    override func configureAppearance() {
        super.configureAppearance()
        title = Resources.Strings.NavBar.session
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
}
