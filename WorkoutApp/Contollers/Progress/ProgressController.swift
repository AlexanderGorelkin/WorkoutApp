//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit

final class PregressController: BaseContoller {
    
    private lazy var dailyPerfomanceView = DailyPerfomanceView(with: Resources.Strings.Progress.dailyPerfomance, buttonTitle: Resources.Strings.Progress.last7Days)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
extension PregressController {
    override func setupViews() {
        super.setupViews()
        
        view.addView(dailyPerfomanceView)
    }
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            dailyPerfomanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 15),
            dailyPerfomanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerfomanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerfomanceView.heightAnchor.constraint(equalTo: dailyPerfomanceView.widthAnchor, multiplier: 0.68)
            
            
            
        ])
        
    }
    override func configureAppearance() {
        super.configureAppearance()
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
        
        dailyPerfomanceView.configure(with: [.init(value: "1", heightParam: 0.1, title: "MON"),
                                             .init(value: "2", heightParam: 0.4, title: "teu"),
                                             .init(value: "3", heightParam: 0.6, title: "Wen"),
                                             .init(value: "4", heightParam: 0.8, title: "Thu"),
                                             .init(value: "5", heightParam: 1, title: "Fri"),
                                             .init(value: "3", heightParam: 0.6, title: "Sat"),
                                             .init(value: "2", heightParam: 0.4, title: "Sun"),
                                             .init(value: "1", heightParam: 0.1, title: "MON"),
                                             .init(value: "2", heightParam: 0.4, title: "teu"),
                                             .init(value: "3", heightParam: 0.6, title: "Wen"),
                                             .init(value: "4", heightParam: 0.8, title: "Thu"),
                                             .init(value: "5", heightParam: 1, title: "Fri"),
                                             .init(value: "3", heightParam: 0.6, title: "Sat"),
                                             .init(value: "2", heightParam: 0.4, title: "Sun"),
        ])
    }
}
