//
//  SessionContoller.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit

class SessionController: BaseContoller {
    private let timerView = TimerView()

    private let timerDuration: Double = 15
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.navBarRightButtonHandler()
                }
            }
        } else {
            timerView.pauseTimer()
        }
        timerView.state = timerView.state == .isRunning ? .isStopped : .isRunning
        
        setTitleForNavBarButton(timerView.state == .isRunning ? Resources.Strings.Session.navBarPause : Resources.Strings.Session.navBarStart, at: .left)
        
        
    }
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        setTitleForNavBarButton(Resources.Strings.Session.navBarStart, at: .left)
    }

    

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
//            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
    }
    override func configureAppearance() {
        super.configureAppearance()
        title = Resources.Strings.NavBar.session
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
        
    }
}
