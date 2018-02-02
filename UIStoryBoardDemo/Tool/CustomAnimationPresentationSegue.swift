//
//  CustomAnimationPresentationSegue.swift
//  UIStoryBoardDemo
//
//  Created by Liu Yang on 2018/2/1.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import UIKit

class CustomAnimationPresentationSegue: UIStoryboardSegue, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {

    override func perform() {
        destination.transitioningDelegate = self
        super.perform()
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        
        let toView = transitionContext.view(forKey: UITransitionContextViewKey.to)!
        
        if transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to) == destination {
            // Presenting.
            UIView.performWithoutAnimation {
                toView.alpha = 0
                containerView.addSubview(toView)
            }
            
            let transitionContextDuration = transitionDuration(using: transitionContext)
            
            UIView.animate(withDuration: transitionContextDuration, animations: {
                toView.alpha = 1
            }, completion: { success in
                transitionContext.completeTransition(success)
            })
        }
        else {
            // Dismissing.
            let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from)!
            
            UIView.performWithoutAnimation {
                containerView.insertSubview(toView, belowSubview: fromView)
            }
            
            let transitionContextDuration = transitionDuration(using: transitionContext)
            
            UIView.animate(withDuration: transitionContextDuration, animations: {
                fromView.alpha = 0
            }, completion: { success in
                transitionContext.completeTransition(success)
            })
        }
    }
    
}
