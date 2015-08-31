//
//  UIImage+Resize.swift
//  MyLocations
//
//  Created by 孙竞 on 15/3/24.
//  Copyright (c) 2015年 Razeware. All rights reserved.
//

import UIKit

extension UIImage {
  func resizedImageWithBounds(bounds: CGSize) -> UIImage {
    let horizentalRatio = bounds.width / size.width
    let verticalRatio = bounds.height / size.height
    let ratio = min(horizentalRatio, verticalRatio)
    let newSize = CGSize(width: size.width * ratio, height: size.height * ratio)
    UIGraphicsBeginImageContextWithOptions(newSize, true, 0)
    drawInRect(CGRect(origin: CGPoint.zeroPoint, size: newSize))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return newImage
  }
}
