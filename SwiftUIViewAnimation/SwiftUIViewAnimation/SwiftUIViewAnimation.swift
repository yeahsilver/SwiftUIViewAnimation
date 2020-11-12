//
//  SwiftUIViewAnimation.swift
//  SwiftUIViewAnimation
//
//  Created by 허예은 on 2020/11/12.
//

import UIKit

open class SwiftUIViewAnimation: UIViewController{
    public func selectAnimation(animationNumber: Int, animationView: UIView){
        switch animationNumber{
        case 1:
            fadeIn(animationView: animationView);
        case 2:
            fadeOut(animationView: animationView);
        case 3:
            leftToRight(animationView: animationView);
        case 4:
            rightToLeft(animationView: animationView);
        case 5:
            springLeft(animationView: animationView);
        case 6:
            springRight(animationView: animationView);
        case 7:
            expansion(animationView: animationView);
        case 8:
            topToBottom(animationView: animationView);
        case 9:
            bottomToTop(animationView: animationView);
        default:
            print("No result")
        }
    }
    
    private func fadeIn(animationView: UIView){
        animationView.alpha = 0
        UIView.animate(withDuration: 1.0, animations: {
            animationView.alpha = 1
        })
    }
    
    private func fadeOut(animationView: UIView){
        animationView.alpha = 1
        UIView.animate(withDuration: 1.0, animations: {
            animationView.alpha = 0
        })
    }
    
    private func leftToRight(animationView: UIView){
        animationView.center.x = self.view.frame.width + 50
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 50.0, initialSpringVelocity: 70.0, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            animationView.center.x = self.view.frame.width/2
        }), completion: nil)
    }
    
    private func rightToLeft(animationView: UIView){
        animationView.center.x = -50
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 50.0, initialSpringVelocity: 70.0, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            animationView.center.x = self.view.frame.width/2
        }), completion: nil)
    }
    
    private func springLeft(animationView: UIView){
        animationView.center.x = self.view.frame.width+50
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 50.0, initialSpringVelocity: 20.0, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            animationView.center.x = self.view.frame.width/2
        }), completion: nil)
    }
    
    private func springRight(animationView: UIView){
        animationView.center.x = -50
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 50.0, initialSpringVelocity: 20.0, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            animationView.center.x = self.view.frame.width/2
        }), completion: nil)
    }
    
    private func expansion(animationView: UIView){
        UIView.animate(withDuration: 1.0, animations: {
            animationView.alpha = 0
            UIView.animate(withDuration: 2.0, animations: { [self] in
                animationView.alpha = 1
                animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: view.frame.height)
            })
        })
    }
    
    private func topToBottom(animationView: UIView){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseOut, animations: {
            animationView.frame = CGRect(x: 0, y: UIScreen.main.bounds.size.height, width: UIScreen.main.bounds.size.width, height: self.view.frame.height)
        }, completion: nil)
    }
    
    private func bottomToTop(animationView: UIView){
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseOut, animations: {
            animationView.frame = CGRect(x: 0, y: self.view.frame.origin.y + animationView.frame.size.height + 20, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - animationView.frame.size.height - 20)
        }, completion: nil)
    }
}
