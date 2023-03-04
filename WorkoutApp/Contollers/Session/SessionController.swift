//
//  SessionContoller.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit

class SessionController: BaseContoller {
    private let timerView = TimerView()
    
    private lazy var statsView = StatsView(with: Resources.Strings.Session.workoutStats)
    private lazy var stepsView = StepsView(with: Resources.Strings.Session.stapsCounter)
    
    
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
        view.addView(statsView)
        view.addView(stepsView)
    }
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
        
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            
            statsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 10),
            statsView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7.5),
            
            
            stepsView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7.5),
            stepsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 10),
            stepsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            stepsView.heightAnchor.constraint(equalTo: statsView.heightAnchor)
            
            
            
        ])
        
    }
    override func configureAppearance() {
        super.configureAppearance()
        title = Resources.Strings.NavBar.session
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
        
        
        
        statsView.configure(with: [.heartRate(value: "155"),
                                   .averagePace(value: "8'20''"),
                                   .totalSteps(value: "7,682"),
                                   .totalDistance(value: "8.25")
        ])
        
        stepsView.configure(with: [.init(value: "8k", heightParam: 1, title: "2/14"),
                                   .init(value: "7k", heightParam: 0.8, title: "2/15"),
                                   .init(value: "5k", heightParam: 0.6, title: "2/16"),
                                   .init(value: "6k", heightParam: 0.7, title: "2/17")
        ])
        
    }
}
