//
//  UIViewController.swift
//  poc-lottie
//
//  Created by Ricardo Yamaguchi on 28/07/22.
//

import UIKit

extension UIViewController {

    static var className: String {
        String(describing: Self.self)
    }

    convenience init(frame: CGRect = .zero) {
        self.init(nibName: Self.className, bundle: nil)
    }

}
