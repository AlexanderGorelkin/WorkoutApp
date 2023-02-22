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
        //Title colors
        static var titleGray = UIColor(hexString: "#545C77")
        //Backgorund colors
        static var background = UIColor(hexString: "#F8F9F9")
        
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "overview"
            static var session = "session"
            static var progress = "progress"
            static var settings = "settings"
        }
        
    }
    enum Images {
        enum TabBar {
            static var overview = UIImage(systemName: "house.fill")
            static var session = UIImage(systemName: "alarm.fill")
            static var progress = UIImage(systemName: "chart.bar.fill")
            static var settings = UIImage(systemName: "gear")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    
}
