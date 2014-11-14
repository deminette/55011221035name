//
//  ViewController.swift
//  QuizE
//
//  Created by Student on 11/14/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollisionBehaviorDelegate {
    
    var BackGround: UIImageView!
    var ItemObj1: UIImageView!
    var Blocker: UIImageView!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var snap: UISnapBehavior!
    var panGesture: UIGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BackGround = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        BackGround.image=UIImage(named: "mirror_png_by_doloresdevelde-d5h40i2.png")
        
        self.view.addSubview(BackGround)
        
        ItemObj1 = UIImageView(frame: CGRect(x: self.view.frame.size.width/2, y: 0, width: 50, height: 50))
        ItemObj1.image = UIImage(named: "sphere glass marble rainbow pam.png")
        self.view.addSubview(ItemObj1)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [ItemObj1])
        animator.addBehavior(gravity)
        
        collision = UICollisionBehavior(items: [ItemObj1])
        collision.translatesReferenceBoundsIntoBoundary=true
        
        
        
        var x=0,y=50,width=10,height=10
        for(var i = 0; i < 6; i++) {
            x=x+10
            y=y+10
            Blocker = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
            Blocker.image = UIImage(named: "sphere glass marble rainbow pam.png")
            self.view.addSubview(Blocker)
            let num1 : Int = x
            let num2 : Int = y
            var cash1 = String(num1)
            var cash2 = String(num2)
            var myString = cash1+cash2
            collision.addBoundaryWithIdentifier("barrier"+myString, forPath: UIBezierPath(rect: Blocker.frame))
            collision.action = {
            }
            
        }
        
        for(var i = 0; i < 8; i++) {
            x=x+10
            Blocker = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
            Blocker.image = UIImage(named: "sphere glass marble rainbow pam.png")
            self.view.addSubview(Blocker)
            let num1 : Int = x
            let num2 : Int = y
            var cash1 = String(num1)
            var cash2 = String(num2)
            var myString = cash1+cash2
            collision.addBoundaryWithIdentifier("barrier"+myString, forPath: UIBezierPath(rect: Blocker.frame))
            collision.action = {
            }
            
        }
        
        for(var i = 0; i < 8; i++) {
            x=x+10
            Blocker = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
            Blocker.image = UIImage(named: "sphere glass marble rainbow pam.png")
            self.view.addSubview(Blocker)
            let num1 : Int = x
            let num2 : Int = y
            var cash1 = String(num1)
            var cash2 = String(num2)
            var myString = cash1+cash2
            collision.addBoundaryWithIdentifier("barrier"+myString, forPath: UIBezierPath(rect: Blocker.frame))
            collision.action = {
            }
            
        }
        
        x=x+70
        
        for(var i = 0; i < 8; i++) {
            y=y+10
            Blocker = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
            Blocker.image = UIImage(named: "sphere glass marble rainbow pam.png")
            self.view.addSubview(Blocker)
            let num1 : Int = x
            let num2 : Int = y
            var cash1 = String(num1)
            var cash2 = String(num2)
            var myString = cash1+cash2
            collision.addBoundaryWithIdentifier("barrier"+myString, forPath: UIBezierPath(rect: Blocker.frame))
            collision.action = {
            }
            
        }
        
        for(var i = 0; i < 8; i++) {
            x=x+10
            Blocker = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
            Blocker.image = UIImage(named: "sphere glass marble rainbow pam.png")
            self.view.addSubview(Blocker)
            let num1 : Int = x
            let num2 : Int = y
            var cash1 = String(num1)
            var cash2 = String(num2)
            var myString = cash1+cash2
            collision.addBoundaryWithIdentifier("barrier"+myString, forPath: UIBezierPath(rect: Blocker.frame))
            collision.action = {
            }
            
        }
        
        x=80
        
        for(var i = 0; i < 17; i++) {
            x=x+10
            Blocker = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
            Blocker.image = UIImage(named: "sphere glass marble rainbow pam.png")
            self.view.addSubview(Blocker)
            let num1 : Int = x
            let num2 : Int = y
            var cash1 = String(num1)
            var cash2 = String(num2)
            var myString = cash1+cash2
            collision.addBoundaryWithIdentifier("barrier"+myString, forPath: UIBezierPath(rect: Blocker.frame))
            collision.action = {
            }
            
        }
        
        for(var i = 0; i < 12; i++) {
            x=x+10
            y=y+10
            Blocker = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
            Blocker.image = UIImage(named: "sphere glass marble rainbow pam.png")
            self.view.addSubview(Blocker)
            let num1 : Int = x
            let num2 : Int = y
            var cash1 = String(num1)
            var cash2 = String(num2)
            var myString = cash1+cash2
            collision.addBoundaryWithIdentifier("barrier"+myString, forPath: UIBezierPath(rect: Blocker.frame))
            collision.action = {
            }
            
        }
        
        
        
        
        animator.addBehavior(collision)
        collision.collisionDelegate = self
        
        let itemBehaviour = UIDynamicItemBehavior(items: [ItemObj1])
        itemBehaviour.elasticity=0.4
        animator.addBehavior(itemBehaviour)
        
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        if(snap != nil){
            animator.removeBehavior(snap)
        }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: ItemObj1, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}