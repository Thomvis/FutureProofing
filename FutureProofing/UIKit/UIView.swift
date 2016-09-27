//
//  UIView.swift
//  Example
//
//  Created by Thomas Visser on 22/12/14.
//  Copyright (c) 2014 Thomas Visser. All rights reserved.
//

import UIKit
import BrightFutures
import Result

extension UIView {
    
    open class func animate(withDuration duration: TimeInterval, delay: TimeInterval, options: UIViewAnimationOptions, animations: @escaping () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.animate(withDuration: duration, delay: delay, options: options, animations: animations) { (finished) -> Void in
            p.trySuccess(finished)
        }
        
        return p.future
    }
    
    open class func animate(withDuration duration: TimeInterval, animations: @escaping () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.animate(withDuration: duration, animations: animations) { (finished) -> Void in
            p.trySuccess(finished)
        }
        
        return p.future
    }

    open class func animate(withDuration duration: TimeInterval, delay: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions, animations: @escaping () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.animate(withDuration: duration, delay: delay, usingSpringWithDamping: dampingRatio, initialSpringVelocity: velocity, options: options, animations: animations) { (finished) -> Void in
            p.trySuccess(finished)
        }
        
        return p.future
    }

    open class func transition(with view: UIView, duration: TimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Swift.Void)? = nil) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.transition(with: view, duration: duration, options: options, animations: animations) { (finished) -> Void in
            p.trySuccess(finished)
        }
        
        return p.future
    }
    
    open class func transition(from view: UIView, to toView: UIView, duration: TimeInterval, options: UIViewAnimationOptions = []) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.transition(from: view, to: toView, duration: duration, options: options) { (finished) -> Void in
            p.trySuccess(finished)
        }
        
        return p.future
    }
    
    open class func perform(_ animation: UISystemAnimation, on views: [UIView], options: UIViewAnimationOptions = [], animations parallelAnimations: (() -> Void)? = nil) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.perform(animation, on: views, options: options, animations: parallelAnimations) { (finished) -> Void in
            p.trySuccess(finished)
        }
        
        return p.future
    }
    
    open class func animateKeyframes(withDuration duration: TimeInterval, delay: TimeInterval, options: UIViewKeyframeAnimationOptions, animations: @escaping () -> Void) -> Future<Bool, NoError> {
        let p = Promise<Bool, NoError>()
        
        self.animateKeyframes(withDuration: duration, delay: delay, options: options, animations: animations) { (finished) -> Void in
            p.trySuccess(finished)
        }
        
        return p.future
    }

}
