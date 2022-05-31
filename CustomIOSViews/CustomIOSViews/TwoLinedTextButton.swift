//
//  TwoLinedTextButton.swift
//  CustomIOSViews
//
//  Created by Decagon on 18/05/2022.
//

import UIKit

struct TwoLinedButtonModel {
    let primaryText, secondaryText: String
}

final class CustomTwoLineButton: UIButton {
    
    private let firstLabel: UILabel = {
       let label = UILabel()
       label.textColor = .red
       return label
    }()
    
    private let secondLabel: UILabel = {
       let label = UILabel()
        label.textColor = .blue
       return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(firstLabel)
        addSubview(secondLabel)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.darkGray.cgColor
        backgroundColor = .yellow
    }
    
    func configure(with model: TwoLinedButtonModel) {
        firstLabel.text = model.primaryText
        secondLabel.text = model.secondaryText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        firstLabel.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height / 2)
        secondLabel.frame = CGRect(x: 0, y: frame.size.height / 2, width: frame.size.width, height: frame.size.height / 2)
    }
}
