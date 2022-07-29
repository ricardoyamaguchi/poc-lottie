//
//  Loading.swift
//  poc-lottie
//
//  Created by Ricardo Yamaguchi on 28/07/22.
//

import UIKit

class Loading {

    static func show(_ navigationController: UINavigationController?) {

        guard let navigationController = navigationController else {
            return
        }

        let loadingViewController = LoadingViewController()
        loadingViewController.modalPresentationStyle = .overCurrentContext
        loadingViewController.modalTransitionStyle = .crossDissolve

        navigationController.present(loadingViewController, animated: true)
    }

}
