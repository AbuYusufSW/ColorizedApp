//
//  StartViewController.swift
//  HW 2
//
//  Created by AbuYusuf on 12.04.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(_ color: UIColor)
}

final class StartViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVS = segue.destination as? SettingsViewController else { return }
        settingsVS.delegate = self
        settingsVS.viewColor = view.backgroundColor
    }
    
}

// MARK: - SettingsViewControllerDelegate
extension StartViewController: SettingsViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
