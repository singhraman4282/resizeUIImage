//
//  ViewController.swift
//  ResizeUIImage
//
//  Created by Raman Singh on 2018-07-05.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction private func resizeImage(_ sender: UIButton) {
        let resizeManager = ResizeManager()
        imageView.image = resizeManager.resizeImage(image: imageView.image!, scaledTo: CGSize(width: imageView.image!.size.width/5, height: imageView.image!.size.height/5))
        
        
    }
    
}

