//
//  SecondViewController.swift
//  figmaapp1
//
//  Created by Ruslan Sharshenov on 05.01.2022.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {

    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "8140 1")
        return view
    }()
    
    private lazy var imageView2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "markovka")
        return view
    }()
    
    private lazy var label1: UILabel = {
            let view = UILabel()
        view.numberOfLines = 2
        view.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.49
        paragraphStyle.lineSpacing = 20
        view.attributedText = NSMutableAttributedString(string: "Welcome \nto our store", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        view.textColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 48)
            return view
        }()
    
    private lazy var label2: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 0.7)
        view.font = UIFont(name: "Gilroy-Medium-", size: 16)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.8
        view.textAlignment = .center
        view.attributedText = NSMutableAttributedString(string: "Ger your groceries in as fast as one hour", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
            return view
        }()
    
    private lazy var button1: CustomButton = {
            let view = CustomButton()
            view.setTitle("Get Started", for: .normal)
            view.backgroundColor = UIColor(red: 0.325, green: 0.694, blue: 0.459, alpha: 1)
            view.titleLabel!.font = UIFont(name: "Gilroy-Semibold", size: 18)
            view.layer.cornerRadius = 15
            return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupSubView()
    }
    
    private func setupSubView() {
        
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.width.bottom.equalToSuperview()
        }
        
        view.addSubview(imageView2)
        imageView2.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.top.equalTo(imageView2.snp.bottom).offset(view.frame.width / 20)
            make.centerX.equalTo(imageView2)
            make.height.equalToSuperview().dividedBy(5.5)
        }
        
        view.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset((view.frame.height) / (-50))
            make.centerX.equalTo(label1)
        }
        
        view.addSubview(button1)
        button1.snp.makeConstraints { make in
            make.top.equalTo(label2.snp.bottom).offset(view.frame.width / 20)
            make.centerX.equalTo(label2)
            make.height.equalTo(view.frame.height / 10)
            make.width.equalToSuperview().dividedBy(1.2)
        }
    }
    
    private func setupViews() {
        button1.setOnClickListener { view in
            self.navigationController?.pushViewController(ThirdViewController(), animated: true)
        }
    }
}
