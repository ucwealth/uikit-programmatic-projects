//
//  IconTextButton.swift
//  CustomIOSViews
//
//  Created by Decagon on 18/05/2022.
//

import UIKit

struct IconTextButtonModel {
    let text: String
    let image: UIImage?
    let backgroundColor: UIColor?
}

class IconTextButton: UIButton {
    private let firstLabel: UILabel = {
       let label = UILabel()
        label.textAlignment = .right
        label.numberOfLines = 1
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .red
       return label
    }()
    
    private let iconImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(firstLabel)
        addSubview(iconImageView)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.darkGray.cgColor
        backgroundColor = .yellow
    }
    
    func configure(with model: IconTextButtonModel) {
        firstLabel.text = model.text
        backgroundColor = model.backgroundColor
        iconImageView.image = model.image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        firstLabel.sizeToFit()
        let iconSize: CGFloat = 18
        let iconX: CGFloat = (frame.size.width - firstLabel.frame.size.width - iconSize - 5) / 2
        iconImageView.frame = CGRect(x: iconX, y: (frame.size.height - iconSize) / 2, width: iconSize, height: iconSize)
        firstLabel.frame = CGRect(x: iconX + iconSize + 5, y: 0, width: firstLabel.frame.size.width, height: frame.size.height)
       
    }
}
