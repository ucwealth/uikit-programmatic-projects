//
//  CustomAlertViewController.swift
//  CustomIOSViews
//
//  Created by Decagon on 18/05/2022.
//

import UIKit

class CustomAlertViewController: UIViewController {
    let customAlert = MyAlert()

    var myButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .link
        button.setTitle("Show Alert", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false 
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myButton)
        setupViews()
    }
    
    func setupViews() {
        NSLayoutConstraint.activate([
            myButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
    }
    
    @objc func didTapButton() {
        customAlert.showAlert(title: "Hello Friend", message: "My eyes are opened to the wonders of programmatic UI. I am in love people! At this point, the sky is my starting point!!", on: self)
    }
    
    @objc func dismissAlert() {
        customAlert.dismissAlert()
    }

}

class MyAlert: NSObject {
    struct Constants {
        static let backgroundAlphaTo: CGFloat = 0.6
        static let animationDuration: TimeInterval = 0.25
    }
    
    private let backgroundView: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        backgroundView.alpha = 0
        return backgroundView
    }()
    
    private let alertView: UIView = {
       let alert = UIView()
        alert.backgroundColor = .white
        alert.layer.masksToBounds = true
        return alert
    }()
    
    private var myTargetView: UIView?
    
    
    func showAlert(title: String, message: String, on viewController: UIViewController) {
        guard let targetView = viewController.view else { return }
        myTargetView = targetView
        backgroundView.frame = targetView.bounds
        targetView.addSubview(backgroundView)
        targetView.addSubview(alertView)
        
        alertView.frame = CGRect(x: 40, y: -300, width: targetView.frame.size.width-80, height: 300)
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: alertView.frame.size.width, height: 80))
        titleLabel.text = title
        titleLabel.textAlignment = .center
        alertView.addSubview(titleLabel)
        
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 80, width: alertView.frame.size.width, height: 170))
        messageLabel.numberOfLines = 0
        messageLabel.text = message
        messageLabel.textAlignment = .left
        alertView.addSubview(messageLabel)
        
        let button = UIButton(frame: CGRect(x: 0, y: alertView.frame.size.height-50, width: alertView.frame.size.width, height: 50))
        alertView.addSubview(button)
        button.setTitle("Dismiss Alert", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)
        
        UIView.animate(withDuration: Constants.animationDuration, animations: {
            self.backgroundView.alpha = Constants.backgroundAlphaTo
        }, completion: {done in
            if done {
                UIView.animate(withDuration: Constants.animationDuration, animations: {
                    self.alertView.center = targetView.center
                })
            }
        })
    }
    
    
    @objc func dismissAlert() {
        guard let targetView = myTargetView else { return }
        UIView.animate(withDuration: Constants.animationDuration, animations: {
            
            self.alertView.frame = CGRect(x: 40, y: targetView.frame.size.height, width: targetView.frame.size.width-80, height: 300)
            
        }, completion: {done in
            if done {
                UIView.animate(withDuration: Constants.animationDuration, animations: {
                    self.backgroundView.alpha = 0
                }, completion: { done in
                    self.backgroundView.removeFromSuperview()
                    self.alertView.removeFromSuperview()
                })
            }
        })
    }
}
