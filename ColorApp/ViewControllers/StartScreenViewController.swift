//
//  StartScreenViewController.swift
//  ColorApp
//
//  Created by Варвара Уткина on 11.10.2024.
//

import UIKit

protocol ColorEditingViewControllerDelegate: AnyObject {
    func setupColor(with color: UIColor)
}

final class StartScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorEditingVC = segue.destination as? ColorEditingViewController else { return }
        colorEditingVC.color = view.backgroundColor
        colorEditingVC.delegate = self
    }
    
}

extension StartScreenViewController: ColorEditingViewControllerDelegate {
    func setupColor(with color: UIColor) {
        view.backgroundColor = color
    }
}
