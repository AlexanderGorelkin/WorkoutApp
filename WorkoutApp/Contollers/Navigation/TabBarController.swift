//
//  TabBarContoller.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit


enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.nonactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let controllers: [NavBarContoller] = Tabs.allCases.map { tab in
            let contoller = NavBarContoller(rootViewController: getController(for: tab))
            contoller.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.title(for: tab),
                                                image: Resources.Images.TabBar.icon(for: tab),
                                                tag: tab.rawValue)
            return contoller
        }
        setViewControllers(controllers, animated: false)
    }
    private func getController(for tab: Tabs) -> BaseContoller {
        switch tab {
            
        case .overview:
            return OverviewController()
        case .session:
            return SessionController()
        case .progress:
            return PregressController()
        case .settings:
            return SettingsController()
        }
    }
    
    
}
