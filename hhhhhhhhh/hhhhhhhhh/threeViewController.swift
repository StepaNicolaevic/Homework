//
//  threeViewController.swift
//  hhhhhhhhh
//
//  Created by qeqwe on 15.11.2023.
//

import UIKit

class threeViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }
    func setupUI() {
        FonImage.addSubview(firstTextFied)
        FonImage.addSubview(secondTextFied)
        FonImage.backgroundColor = .green
        FonImage.addSubview(firstButton)
        FonImage.addSubview(secondButton)
        firstButton.isHidden = true
        secondButton.isHidden = true
        FonImage.addSubview(firstImage)
        FonImage.addSubview(secondImage)
        firstImage.isHidden = true
        secondImage.isHidden = true
        
    }
    
    @IBOutlet weak var FonImage: UIView!
    
    private lazy var firstTextFied: UITextField = {
        let textField = UITextField()
        textField.placeholder = "text1"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 10, y: 10, width: 150, height: 50)
        return textField
        
    }()
    private lazy var secondTextFied: UITextField = {
        let textField = UITextField()
        textField.placeholder = "text1"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 10, y: 50, width: 150, height: 50)
        return textField
        
    }()
    private lazy var firstButton: UIButton = {
        let button = UIButton()
        button.setTitle("ButtonOne", for: .normal)
        button.backgroundColor = .brown
        button.frame = CGRect(x: 10, y: 10, width: 200, height: 100)
        return button
    }()
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("ButtonSecond", for: .normal)
        button.backgroundColor = .brown
        button.frame = CGRect(x: 10, y: 110, width: 200, height: 100)
        return button
    }()
    private lazy var firstImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "images-2")
        image.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        return image
    }()
    private lazy var secondImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "images-3")
        image.frame = CGRect(x: 50, y: 170, width: 100, height: 100)
        return image
    }()
    
    

    @IBAction func segmentsAction(_ sender: Any) {

        switch segmentControl?.selectedSegmentIndex  {
        case 0:
            FonImage.backgroundColor = .green
            firstTextFied.isHidden = false
            secondTextFied.isHidden = false
            firstButton.isHidden = true
            secondButton.isHidden = true
            firstImage.isHidden = true
            secondImage.isHidden = true
        case 1:
            FonImage.backgroundColor = .blue
            firstTextFied.isHidden = true
            secondTextFied.isHidden = true
            firstButton.isHidden = false
            secondButton.isHidden = false
            firstImage.isHidden = true
            secondImage.isHidden = true
        case 2:
            FonImage.backgroundColor = .purple
            firstTextFied.isHidden = true
            secondTextFied.isHidden = true
            firstButton.isHidden = true
            secondButton.isHidden = true
            firstImage.isHidden = false
            secondImage.isHidden = false
        default:
            return
            
            
        }
    }
    
}
