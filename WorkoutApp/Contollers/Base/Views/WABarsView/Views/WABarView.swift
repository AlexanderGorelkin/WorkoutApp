//
//  WABarView.swift
//  WorkoutApp
//
//  Created by Александр Горелкин on 04.03.2023.
//

import UIKit

extension WABarView {
    struct Data {
        let value: String
        let heightParam: Double
        let title: String
    }
}

final class WABarView: BaseView {
    
    private let heightParam: Double
    
    
    private lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helveticaRegular(with: 13)
        label.textColor = Resources.Colors.titleGray
        return label
    }()
    
    private lazy var barView: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colors.active
        view.layer.cornerRadius = 2.5
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helveticaRegular(with: 9)
        label.textColor = Resources.Colors.titleGray
        return label
    }()
    
    init(data: Data) {
        self.heightParam = data.heightParam
        super.init(frame: .zero)
        
        valueLabel.text = data.value

        titleLabel.text = data.title
    }
    
    required init?(coder: NSCoder) {
        self.heightParam = 0
        super.init(frame: .zero)
    }
    
    
    
    
    
}
extension WABarView {
    override func setupViews() {
        super.setupViews()
        addView(valueLabel)
        addView(barView)
        addView(titleLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            
            valueLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            barView.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 5),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.widthAnchor.constraint(equalToConstant: 17),
            barView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightParam, constant: -40),
            
            titleLabel.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            
        
        ])
        
        
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        
    }
    
    
    
}

