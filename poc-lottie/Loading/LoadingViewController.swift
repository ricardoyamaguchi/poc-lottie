//
//  MainViewController.swift
//  poc-lottie
//
//  Created by Ricardo Yamaguchi on 28/07/22.
//

import UIKit
import Lottie

class LoadingViewController: UIViewController {

    private let kBackgroundAlpha: CGFloat = 0.7
    private let kAnimationSpeed: CGFloat = 2.0

    @IBOutlet private weak var animationContainerView: UIView?

    private var animation: AnimationView?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupAnimationView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animation?.play()
        setupTimer()
    }

    private func setupView() {
        view.backgroundColor = .black.withAlphaComponent(kBackgroundAlpha)
    }

    private func setupAnimationView() {
        animation = .init(name: "green-loading")
        animation?.contentMode = .scaleAspectFill
        animation?.loopMode = .loop
        animation?.animationSpeed = kAnimationSpeed
        animation?.frame = animationContainerView?.bounds ?? .zero

        guard let animation = animation else { return }
        animationContainerView?.addSubview(animation)
    }

    private func setupTimer() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            self.dismiss(animated: true)
        }
    }

}
