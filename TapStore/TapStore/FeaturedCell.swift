//
//  FeaturedCell.swift
//  TapStore
//
//  Created by Decagon on 31/05/2022.
//

import UIKit

class FeaturedCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseIdentifier: String = "FeaturedCell"
    
    private let tagline: UILabel = {
       let tagline = UILabel()
        tagline.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        tagline.textColor = .systemBlue
        return tagline
    }()
    
    private let name: UILabel = {
       let name = UILabel()
        name.font = UIFont.preferredFont(forTextStyle: .title2)
        name.textColor = .label
        return name
    }()
    
    private let subtitle: UILabel = {
       let subtitle = UILabel()
        subtitle.font = UIFont.preferredFont(forTextStyle: .title2)
        subtitle.textColor = .secondaryLabel
        return subtitle
    }()

    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = UIStackView(arrangedSubviews: [tagline, name, subtitle, imageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)

        ])
        
        stackView.setCustomSpacing(10, after: subtitle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("We are not using storyboard abeg!")
    }
    
    func configure(with app: App) {
        tagline.text = app.tagline.uppercased()
        name.text = app.name
        subtitle.text = app.subheading
        imageView.image = UIImage(named: app.image)
        
    }
    
    
}
