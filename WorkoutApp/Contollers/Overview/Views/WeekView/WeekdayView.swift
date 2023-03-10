//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 24.02.2023.
//

import UIKit

extension WeekView {
    final class WeekdayView: BaseView {
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        
        func configure(with index: Int, and name: String) {
            
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.goForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            
            let isToday = currentDay.stripTime() == Date().stripTime()
            backgroundColor = isToday ? Resources.Colors.active : Resources.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : Resources.Colors.nonactive
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : Resources.Colors.nonactive
        }
        
    }
}

extension WeekView.WeekdayView {
    
    override func setupViews() {
        super.setupViews()
        
        addView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    override func configureAppearance() {
        super.configureAppearance()
        
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resources.Fonts.helveticaRegular(with: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resources.Fonts.helveticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 3
        stackView.axis = .vertical
    }
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
