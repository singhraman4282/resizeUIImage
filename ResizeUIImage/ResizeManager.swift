//
//  ResizeManager.swift
//  ResizeUIImage
//
//  Created by Raman Singh on 2018-07-05.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

import UIKit

class ResizeManager: NSObject {

    func resizeImage(image: UIImage?, scaledTo newSize: CGSize) -> UIImage {
        //UIGraphicsBeginImageContext(newSize);
        // In next line, pass 0.0 to use the current device's pixel scaling factor (and thus account for Retina resolution).
        // Pass 1.0 to force exact pixel size.
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        image?.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }

    
    
}
