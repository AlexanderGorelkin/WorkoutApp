//
//  TimerPercentView.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 28.02.2023.
//

import UIKit


extension TimerView {
    final class PercentView: BaseView {
        
        private lazy var stackView: UIStackView = {
           let view = UIStackView()
            view.axis = .vertical
            view.distribution = .fillProportionally
            view.spacing = 5
            
            return view
            
            
        }()
        
        private lazy var percentLabel: UILabel = {
           let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(with: 23)
            label.textColor = Resources.Colors.titleGray
            label.textAlignment = .center
            return label
        }()
        private lazy var subtitleLabel: UILabel = {
           let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(with: 10)
            label.textColor = Resources.Colors.subtitle
            label.textAlignment = .center
            return label
        }()
        
        func configure(with title: String, value: Int) {
            subtitleLabel.text = title
            percentLabel.text = "\(value)"
        }
        
        
    }
}
extension TimerView.PercentView {
    
    
    override func setupViews() {
        super.setupViews()
        addView(stackView)
        stackView.addArrangedSubview(percentLabel)
        stackView.addArrangedSubview(subtitleLabel)
    }
    
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
        
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
        
    }
    
}
