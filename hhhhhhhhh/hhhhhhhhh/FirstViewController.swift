//
//  FirstViewController.swift
//  hhhhhhhhh
//
//  Created by qeqwe on 14.11.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var imageGallary: UIImageView!
    var images = [UIImage.init(named: "images-2"), UIImage.init(named: "images-3"), UIImage.init(named: "images-4"), UIImage.init(named: "images-5"), UIImage.init(named: "images-6"), UIImage.init(named: "images-7"), UIImage.init(named: "images-8"), UIImage.init(named: "images-9"), UIImage.init(named: "images-10"), UIImage.init(named: "images-11")]

    var imageIndex = 0
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextImage(_ sender: Any) {
        if imageIndex <= 9 {
            imageIndex += 1
            imageGallary.image = images[imageIndex % images.count]
            
        } else {
            return
        }
    }
    
    
    
    @IBAction func backImage(_ sender: Any) {
        if imageIndex >= 1 {
            imageIndex -= 1
            imageGallary.image = images[imageIndex % images.count]
            
        } else {
            return
        }
        
    }

}
