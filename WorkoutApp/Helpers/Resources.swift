//
//  Resources.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit


enum Resources {
    
    enum Colors {
        //Another colors
        static var active = UIColor(hexString: "#437BFE")
        static var nonactive = UIColor(hexString: "#929DA5")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var secondary = UIColor(hexString: "F0F3FF")
        //Title colors
        static var titleGray = UIColor(hexString: "#545C77")
        //Backgorund colors
        static var background = UIColor(hexString: "#F8F9F9")
        
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String? {
                switch tab {
                case .overview:
                    return "Overview"
                case .session:
                    return "Session"
                case .progress:
                    return "Progress"
                case .settings:
                    return "Settings"
                }
            }
        }
        enum NavBar {
            static var overview = "Today"
            static var session = "High Intensity Cardio"
            static var progress = "Workout Progress"
            static var settings = "Settings"
        }
        enum Overview {
            static var allWorkoutsButton = "All workouts"
            
        }
        enum Session {
            static var navBarLeft = "Pause"
            static var navBarRight = "Finish"
        }
        enum Progress {
            static var navBarLeft = "Export"
            static var navBarRight = "Details"
        }
        enum Settings {
            
        }
        
    }
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview:
                    return UIImage(systemName: "house.fill")
                case .session:
                    return UIImage(systemName: "alarm.fill")
                case .progress:
                    return UIImage(systemName: "chart.bar.fill")
                case .settings:
                    return UIImage(systemName: "gear")
                }
            }
        }
        enum Common {
            static var allWorkoutsButton = UIImage(systemName: "chevron.down")
            static var addButton = UIImage(systemName: "plus.circle.fill")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    
}
