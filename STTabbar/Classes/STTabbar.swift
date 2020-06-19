//
//  STTabbar.swift
//  Pods-STTabbar_Example
//
//  Created by Shraddha Sojitra on 19/06/20.
//

import Foundation
import UIKit

@IBDesignable
public final class STTabbar: UITabBar {
    
    // MARK:- Variables -
    @objc public var centerButtonActionHandler: ()-> () = {}

    @IBInspectable public var centerButtonColor: UIColor?
    @IBInspectable public var centerButtonHeight: CGFloat = 50.0
    @IBInspectable public var padding: CGFloat = 5.0
    @IBInspectable public var buttonImage: UIImage?
    @IBInspectable public var buttonTitle: String?
    
    @IBInspectable public var tabbarColor: UIColor = UIColor.lightGray
    @IBInspectable public var unselectedItemColor: UIColor = UIColor.white

    private var shapeLayer: CALayer?
    
    private func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createPath()
        shapeLayer.strokeColor = UIColor.clear.cgColor
        shapeLayer.fillColor = tabbarColor.cgColor
        shapeLayer.lineWidth = 0
        
        //The below 4 lines are for shadow above the bar. you can skip them if you do not want a shadow
        shapeLayer.shadowOffset = CGSize(width:0, height:0)
        shapeLayer.shadowRadius = 10
        shapeLayer.shadowColor = UIColor.gray.cgColor
        shapeLayer.shadowOpacity = 0.3
        
        if let oldShapeLayer = self.shapeLayer {
            self.layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
        } else {
            self.layer.insertSublayer(shapeLayer, at: 0)
        }
        self.shapeLayer = shapeLayer
        self.tintColor = centerButtonColor
        self.unselectedItemTintColor = unselectedItemColor
        self.setupMiddleButton()
    }
    
    override public func draw(_ rect: CGRect) {
        self.addShape()
    }
        
    override public func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        guard !clipsToBounds && !isHidden && alpha > 0 else { return nil }
        for member in subviews.reversed() {
            let subPoint = member.convert(point, from: self)
            guard let result = member.hitTest(subPoint, with: event) else { continue }
            return result
        }
        return nil
    }
    
    private func createPath() -> CGPath {
        let f = CGFloat(centerButtonHeight / 2.0) + padding
        let h = frame.height
        let w = frame.width
        let halfW = frame.width/2.0
        let r = CGFloat(18)
        let path = UIBezierPath()
        path.move(to: .zero)
        
        path.addLine(to: CGPoint(x: halfW-f-(r/2.0), y: 0))
        
        path.addQuadCurve(to: CGPoint(x: halfW-f, y: (r/2.0)), controlPoint: CGPoint(x: halfW-f, y: 0))
        
        path.addArc(withCenter: CGPoint(x: halfW, y: (r/2.0)), radius: f, startAngle: .pi, endAngle: 0, clockwise: false)
        
        path.addQuadCurve(to: CGPoint(x: halfW+f+(r/2.0), y: 0), controlPoint: CGPoint(x: halfW+f, y: 0))
        
        path.addLine(to: CGPoint(x: w, y: 0))
        path.addLine(to: CGPoint(x: w, y: h))
        path.addLine(to: CGPoint(x: 0.0, y: h))
        
        return path.cgPath
    }
    
    private func setupMiddleButton() {
        
        let centerButton = UIButton(frame: CGRect(x: (self.bounds.width / 2)-(centerButtonHeight/2), y: -20, width: centerButtonHeight, height: centerButtonHeight))
        
        centerButton.layer.cornerRadius = centerButton.frame.size.width / 2.0
        centerButton.setTitle(buttonTitle, for: .normal)
        centerButton.setImage(buttonImage, for: .normal)
        centerButton.backgroundColor = centerButtonColor
        centerButton.tintColor = UIColor.white

        //add to the tabbar and add click event
        self.addSubview(centerButton)
        centerButton.addTarget(self, action: #selector(self.centerButtonAction), for: .touchUpInside)
    }
    
    // Menu Button Touch Action
     @objc func centerButtonAction(sender: UIButton) {
        self.centerButtonActionHandler()
     }
}

