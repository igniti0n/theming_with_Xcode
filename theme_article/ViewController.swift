//
//  ViewController.swift
//  theme_article
//
//  Created by Ivan Stajcer on 09.03.2022..
//

import UIKit

class ViewController: UIViewController {
    private lazy var mainView = MainView()
    
    override func loadView() {
        super.loadView()
        view = mainView
    }
    
    func getCurrentTheme() -> String {
        traitCollection.userInterfaceStyle == .light ? "light" : "dark"
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        // Do some updates
        mainView.updateView(with: traitCollection.userInterfaceStyle)
    }
}
