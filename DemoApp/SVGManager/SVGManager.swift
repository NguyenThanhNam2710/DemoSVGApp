//
//  SVGManager.swift
//  FPaySDK
//
//  Created by Matsu on 15/06/2022.
//

import Foundation
import PocketSVG
import UIKit

extension UIView {
    func circle() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
    }
    
    var snapshot: UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        let capturedImage = renderer.image { context in
            layer.render(in: context.cgContext)
        }
        return capturedImage
    }
}

class SVGManager {
    public static let shared = SVGManager()
    
    private init() {}
    
    fileprivate func loadSVGPaths(named: String) -> [SVGBezierPath] {
        if let url = Bundle.main.url(forResource: named, withExtension: "svg") {
            let paths = SVGBezierPath.pathsFromSVG(at: url)
//            let a = SVGAttributeSet
            return paths
        }
        return []
    }
    
    func loadSVGImage(name: String, size: CGSize, getLayer: (_ paths: [SVGBezierPath]) -> CALayer) -> UIImage {
        let svgPaths = self.loadSVGPaths(named: name)
        let tmpLayer = getLayer(svgPaths)
        let tmpView = UIView.init(frame: CGRect.init(origin: .zero, size: size))
        tmpView.layer.addSublayer(tmpLayer)
        return tmpView.snapshot
    }
}


extension UIImageView {
    func setImage(from svgImage: String, _ size: CGSize? = nil, pathFillColors: [(paths: [Int], fillColor: UIColor)]? = nil) {
        self.image = UIImage().imageBySVG(svgImage, size != nil ? size! : self.frame.size, pathFillColors: pathFillColors)
    }
}


extension UIImage {
    func imageBySVG(_ svgImage: String, _ size: CGSize? = nil, pathFillColors: [(paths: [Int], fillColor: UIColor)]? = nil) -> UIImage {
        return SVGManager.shared.loadSVGImage(name: svgImage, size: size != nil ? size! : self.size) { paths in
            let tmpCALayer = CALayer()
            for (index, path) in paths.enumerated() {
                if path.svgRepresentation.contains("maskUnits") {
                    
                }
                if let mask = path.svgAttributes["maskUnits"] {
//                        print(mask)
//                        shapeLayer.mask = mask
                }
                
                
                let shapeLayer = CAShapeLayer()
                shapeLayer.path = path.cgPath
                
                if let pathFillColors = pathFillColors,
                   let position = pathFillColors.firstIndex(where: { (paths, fillColor) in
                       for path in paths {
                           if index == path { return true }
                       }
                       return false
                   }) {
                    shapeLayer.fillColor = pathFillColors[position].fillColor.cgColor
                } else {
                    if let fillColorVal = path.svgAttributes["fill"] {
                        shapeLayer.fillColor = (fillColorVal as! CGColor)
                    }
                    if let mask = path.svgAttributes["id"] {
//                        print(mask)
//                        shapeLayer.mask = mask
                    }
                }
                tmpCALayer.addSublayer(shapeLayer)
            }
            return tmpCALayer
        }
    }
}
