//
//  PicturePickerViewController.swift
//  CustomIOSViews
//
//  Created by Decagon on 30/05/2022.
//

import UIKit

class PicturePickerViewController: UIViewController {
    private var _imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private var myButton: UIButton = {
       let button = UIButton()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("Click me", for: .normal)
        button.backgroundColor = .systemRed
        button.tintColor = .systemRed
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(_imageView)
        view.addSubview(myButton)
        
    }
    @objc func didTapButton() {
        print(_imageView.image)
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self
        myPickerController.sourceType = .photoLibrary
        myPickerController.allowsEditing = true
        present(myPickerController, animated: true, completion: nil)
        
    }
    
    override func viewDidLayoutSubviews() {
        _imageView.frame = CGRect(x: 20, y: 30, width: view.frame.size.width - 30, height: 100)
        myButton.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 30)
    }

}

extension PicturePickerViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate  {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            _imageView.image = image
        }
        dismiss(animated: true, completion: nil)
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
