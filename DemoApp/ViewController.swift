//
//  ViewController.swift
//  DemoApp
//
//  Created by Nam Nguyễn Thành on 13/06/2022.
//

import UIKit
//import SwiftPakageSDK

class ViewController: UIViewController {
    @IBOutlet weak var statusImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        SDKManager.share.initFoxpaySDK()
        
//            self.statusImageView.setImage(from: "svg_transaction_result_success",
//                                          pathFillColors:
//                                            [
//                                                (paths: [1, 7, 8], fillColor: AppColour.secondaryContainer.value),
//                                                (paths: [6], fillColor: AppColour.statusWarning.value)
//                                            ])
//
//        self.statusImageView.image = SVGManager.shared.loadSVGImage(name: "svg_transaction_result_waiting", size: CGSize(width: 200, height: 200)) { paths in
//            let tmpCALayer = CALayer()
//            for (index, path) in paths.enumerated() {
//                let shapeLayer = CAShapeLayer()
//                shapeLayer.path = path.cgPath
//
//                switch index {
//                case 1:
//                    shapeLayer.fillColor = AppColour.viewBackgroundAvatar.value.withAlphaComponent(0.2).cgColor
//                case 6:
//                    shapeLayer.fillColor = AppColour.statusInfo.value.cgColor
//                case 7, 8:
//                    shapeLayer.fillColor = AppColour.viewCircleIcon.value.cgColor
//                default:
//                    if let fillColorVal = path.svgAttributes["fill"] {
//                        shapeLayer.fillColor = (fillColorVal as! CGColor)
//                    }
//                }
//                tmpCALayer.addSublayer(shapeLayer)
//            }
//            return tmpCALayer
//        }
    }
    
}

