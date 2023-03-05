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
        static let active = UIColor(hexString: "#437BFE")
        static let nonactive = UIColor(hexString: "#929DA5")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "F0F3FF")
        //Title colors
        static let titleGray = UIColor(hexString: "#545C77")
        static let subtitle = UIColor(hexString: "#D8D8D8")
        //Backgorund colors
        static let background = UIColor(hexString: "#F8F9F9")
        
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
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        enum Overview {
            static let allWorkoutsButton = "All workouts"
            
        }
        enum Session {
            static let navBarStart = "Start  "
            static let navBarPause = "Pause"
            static let navBarRFinish = "Finish"
            
            static let elapsedTime = "Elapsed time"
            static let remainingTime = "Remaining time"
            static let completedLabel = "Comleted".uppercased()
            static let remainingLabel = "Remaining".uppercased()
            
            static let workoutStats = "Workout stats"
            static let averagePace = "Average pace"
            static let heartRate = "Heart rate"
            static let totalDistance = "Total distance"
            static let totalSteps = "Total steps"
            
            static let stapsCounter = "Steps Counter"
        }
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
            
            static let dailyPerfomance = "Daily perfomance"
            static let last7Days = "Last 7 days"
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
        
        enum Session {
            enum Stats {
                static let averagePace = UIImage(named: "averagePace")
                static let heartRate = UIImage(named: "heartRate")
                static let totalDistance = UIImage(named: "totalDistance")
                static let totalSteps = UIImage(named: "totalSteps")
            }
        }
        
        
        enum Common {
            static let allWorkoutsButton = UIImage(systemName: "chevron.down")
            static let addButton = UIImage(systemName: "plus.circle.fill")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    
}
