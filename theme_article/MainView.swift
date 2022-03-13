//
//  MainView.swift
//  theme_article
//
//  Created by Ivan Stajcer on 10.03.2022..
//

import Foundation
import UIKit
import SnapKit

final class MainView: UIView {
    
    // MARK: - Properties -
    
    private lazy var imageView  = UIImageView()
    private lazy var tintedImageView  = UIImageView()
    private lazy var anyView = UIView()
    private lazy var anyDarkView = UIView()
    private lazy var anyLightDarkView = UIView()
    private lazy var anyLabel = UILabel()
    private lazy var anyDarkLabel = UILabel()
    private lazy var anyLightDarkLabel = UILabel()


    // MARK: - Initi -
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
}

// MARK: - Public methods -

extension MainView {
    func updateView(with theme: UIUserInterfaceStyle)  {
        tintedImageView.tintColor = theme == .light ? .orange  : .blue
    }
}

// MARK: - Private methods -

private extension MainView {
    func setupViews() {
        backgroundColor = .white
        setupImageView()
        setupTintedImageView()
        setupAnyView()
        setupAnyDarkView()
        setupAnyLightDarkView()
        setupAnyLabel()
        setupAnyDarkLabel()
        setupAnyLightDarkLabel()
    }
    
    func setupImageView() {
        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(40)
            make.centerX.equalTo(safeAreaLayoutGuide)
            make.height.width.equalTo(80)
        }
        imageView.image =  UIImage(named: "phone")
    }
    
    func setupTintedImageView() {
        addSubview(tintedImageView)
        tintedImageView.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.centerX.equalTo(safeAreaLayoutGuide)
            make.height.width.equalTo(80)
        }
        tintedImageView.image =  UIImage(named: "icon")?.withRenderingMode(.alwaysTemplate)
        updateView(with: traitCollection.userInterfaceStyle)
    }
    
    func setupAnyView() {
        addSubview(anyView)
        anyView.snp.makeConstraints { make in
            make.top.equalTo(tintedImageView.snp.bottom).offset(20)
            make.leading.trailing.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(80)
        }
        anyView.backgroundColor = UIColor(named: "any")
    }
    
    func setupAnyDarkView() {
        addSubview(anyDarkView)
        anyDarkView.snp.makeConstraints { make in
            make.top.equalTo(anyView.snp.bottom)
            make.leading.trailing.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(80)
        }
        anyDarkView.backgroundColor = UIColor(named: "anyDark")
    }
    
    func setupAnyLightDarkView() {
        addSubview(anyLightDarkView)
        anyLightDarkView.snp.makeConstraints { make in
            make.top.equalTo(anyDarkView.snp.bottom)
            make.leading.trailing.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(80)
        }
        anyLightDarkView.backgroundColor = UIColor(named: "anyLightDark")
    }
    
    func setupAnyLabel() {
        anyView.addSubview(anyLabel)
        anyLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        anyLabel.text = "Any"
    }
    
    func setupAnyDarkLabel() {
        anyDarkView.addSubview(anyDarkLabel)
        anyDarkLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        anyDarkLabel.text = "AanyDark"
    }
    
    func setupAnyLightDarkLabel() {
        anyLightDarkView.addSubview(anyLightDarkLabel)
        anyLightDarkLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        anyLightDarkLabel.text = "AnyLightDark"
    }
}

