//
//  StatsItemView.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 28.02.2023.
//

import UIKit

enum StatsItem {
    case averagePace(value: String)
    case heartRate(value: String)
    case totalDistance(value: String)
    case totalSteps(value: String)
    
    var data: StatsItemView.ItemData {
        switch self {
        case .averagePace(value: let value):
            return .init(image: Resources.Images.Session.Stats.averagePace,
                         value: "\(value) / km",
                         title: Resources.Strings.Session.averagePace)
        case .heartRate(value: let value):
            return .init(image: Resources.Images.Session.Stats.heartRate,
                         value: "\(value) bpm",
                         title: Resources.Strings.Session.heartRate)
        case .totalDistance(value: let value):
            return .init(image: Resources.Images.Session.Stats.totalDistance,
                         value: "\(value) / km",
                         title: Resources.Strings.Session.totalDistance)
        case .totalSteps(value: let value):
            return .init(image: Resources.Images.Session.Stats.totalSteps,
                         value: "\(value)",
                         title: Resources.Strings.Session.totalSteps)
        }
    }
}


final class StatsItemView: BaseView {
    
    struct ItemData {
        let image: UIImage?
        let value: String
        let title: String
        
        
    }
    
    
    private lazy var imageView = UIImageView()
    private lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helveticaRegular(with: 17)
        label.textColor = Resources.Colors.titleGray
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helveticaRegular(with: 10)
        label.textColor = Resources.Colors.titleGray
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    func configure(with item: StatsItem) {
        imageView.image = item.data.image
        valueLabel.text = item.data.value
        titleLabel.text = item.data.title
    }
    
}
extension StatsItemView {
    
    override func setupViews() {
        super.setupViews()
        
        addView(imageView)
        addView(stackView)
        stackView.addArrangedSubview(valueLabel)
        stackView.addArrangedSubview(titleLabel)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        
        NSLayoutConstraint.activate([
            
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 23),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
            
            
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        
    }
    
}
