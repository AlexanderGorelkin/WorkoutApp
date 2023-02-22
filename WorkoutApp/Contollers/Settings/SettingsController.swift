//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 22.02.2023.
//

import UIKit

class SettingsController: BaseContoller {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }


}
