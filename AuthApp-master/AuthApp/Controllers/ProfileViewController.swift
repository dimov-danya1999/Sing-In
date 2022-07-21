//
//  ProfileViewController.swift
//  AuthApp
//
//  Created by Алексей Пархоменко on 29.04.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    var firstname: String?
    var lastname: String?
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My profile"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        firstnameTextField.text = firstname
        lastnameTextField.text = lastname
        photoImageView.image = image
    }
    
    @IBAction func changeInfoTapped(_ sender: UIButton) {
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = photoImageView.image else { return }
        let shareController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("It is done!")
            }
        }
        
        shareController.popoverPresentationController?.sourceView = sender
        shareController.popoverPresentationController?.permittedArrowDirections = .any
        present(shareController, animated: true, completion: nil)
    }
}
