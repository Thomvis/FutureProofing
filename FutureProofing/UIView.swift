//
//  UIView.swift
//  Example
//
//  Created by Thomas Visser on 22/12/14.
//  Copyright (c) 2014 Thomas Visser. All rights reserved.
//

import UIKit
import BrightFutures

extension UIView {
    
    class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewAnimationOptions, animations: () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.animateWithDuration(duration, delay: delay, options: options, animations: animations) { (finished) -> Void in
            p.success(finished)
        }
        
        return p.future
    }
    
    class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.animateWithDuration(duration, animations: animations) { (finished) -> Void in
            p.success(finished)
        }
        
        return p.future
    }
    
    class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions, animations: () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.animateWithDuration(duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity, options: options, animations: animations) { (finished) -> Void in
            p.success(finished)
        }
        
        return p.future
    }
    
    class func transitionWithView(view: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions, animations: () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.transitionWithView(view, duration: duration, options: options, animations: animations) { (finished) -> Void in
            p.success(finished)
        }
        
        return p.future
    }
    
    class func transitionFromView(fromView: UIView, toView: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.transitionFromView(fromView, toView: toView, duration: duration, options: options) { (finished) -> Void in
            p.success(finished)
        }
        
        return p.future
    }
    
    class func performSystemAnimation(animation: UISystemAnimation, onViews views: [AnyObject], options: UIViewAnimationOptions, animations parallelAnimations: (() -> Void)?) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.performSystemAnimation(animation, onViews: views, options: options, animations: parallelAnimations) { (finished) -> Void in
            p.success(finished)
        }
        
        return p.future
    }
    
    class func animateKeyframesWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewKeyframeAnimationOptions, animations: () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: animations) { (finished) -> Void in
            p.success(finished)
        }
        
        return p.future
    }

    
}