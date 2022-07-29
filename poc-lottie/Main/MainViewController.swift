//
//  MainViewController.swift
//  poc-lottie
//
//  Created by Ricardo Yamaguchi on 28/07/22.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func showLoadingTap(_ sender: Any) {
        Loading.show(navigationController)
    }

}
