//
//  CustomButton.swift
//  UIStoryBoardDemo
//
//  Created by Liu Yang on 2018/1/31.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.green.setFill()
        path.fill()
    }

}
