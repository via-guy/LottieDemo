//
//  ViewController.swift
//  LottieDemo
//
//  Created by Guy Kogus on 7/2/24.
//

import Lottie
import UIKit

class ViewController: UIViewController {
    @IBOutlet var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let animationView = LottieAnimationView(name: "loader")
        containerView.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-(0)-[contentView]-(0)-|",
            options: NSLayoutConstraint.FormatOptions.alignAllLastBaseline,
            metrics: nil,
            views: ["contentView": animationView]
        ))
        containerView.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-(0)-[contentView]-(0)-|",
            options: NSLayoutConstraint.FormatOptions.alignAllLastBaseline,
            metrics: nil,
            views: ["contentView": animationView]
        ))
        animationView.backgroundBehavior = .pauseAndRestore
        animationView.viewportFrame = animationView.bounds
        animationView.loopMode = .loop
        animationView.play()
    }
}
