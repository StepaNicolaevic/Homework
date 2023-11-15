//
//  SecondViewController.swift
//  hhhhhhhhh
//
//  Created by qeqwe on 14.11.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    var imagesSecond = [UIImage.init(named: "images-2"), UIImage.init(named: "images-3"), UIImage.init(named: "images-4"), UIImage.init(named: "images-5"), UIImage.init(named: "images-9"), UIImage.init(named: "images-7"), UIImage.init(named: "images-8")]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

       
    }
    func setupUI() {
        let screenWidth = Double(self.view.frame.size.width)
        let imageVidth = 100
        let imageHeight = 100
        
        var imageX = 0
        var imageY = 0
        var stepY = 0
        var defPositionImage = 0
        
        
        for i in 0...3 {
            if i % 2 == 0 && defPositionImage % 2 == 0 {
                imageX = 15
                stepY += 1
                
            } else {
                
                imageX = 220
            }
            defPositionImage += 1
            imageY = stepY * 170
            
            
            let imageView = UIImageView()
            imageView.image = imagesSecond[i]
            let labeView = UILabel()
            labeView.text = "Medved"
            
            if i == 0 || i == 1 {
                imageView.frame = CGRect(x: imageX, y: 50, width: Int(imageVidth), height: Int(imageHeight))
                labeView.frame = CGRect(x: imageX, y: 150, width: Int(imageVidth), height: Int(imageHeight))
            } else {
                
                imageView.frame = CGRect(x: imageX, y: imageY, width: Int(imageVidth), height: Int(imageHeight))
                labeView.frame = CGRect(x: imageX, y: (imageY + 100), width: Int(imageVidth), height: Int(imageHeight))
            }
            
            view.addSubview(imageView)
            view.addSubview(labeView)
            
        }
        
    }

   

}
