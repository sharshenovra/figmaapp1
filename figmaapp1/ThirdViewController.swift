//
//  SecondViewController.swift
//  figmaapp1
//
//  Created by Ruslan Sharshenov on 05.01.2022.
//

import UIKit
import SnapKit

class ThirdViewController: UIViewController {

    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "601 1")
        return view
    }()
    
    private lazy var label1: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.012, green: 0.012, blue: 0.012, alpha: 1)

        view.font = .systemFont(ofSize: 20, weight: .semibold)

        view.numberOfLines = 0

        view.lineBreakMode = .byWordWrapping

        var paragraphStyle = NSMutableParagraphStyle()

        paragraphStyle.lineHeightMultiple = 0.91
        paragraphStyle.lineSpacing = 10
        
        view.attributedText = NSMutableAttributedString(string: "Get your groceries\nwith nectar", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
            return view
        }()
    
    private lazy var imageView2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "Rectangle 11")
        view.layer.cornerRadius = 3
        return view
    }()
    
    private lazy var label2: UILabel = {
            let view = UILabel()
        view.textColor = .black
        view.text = "+880"
        view.font = .systemFont(ofSize: 18, weight: .thin)
            return view
        }()
    
    private lazy var view2: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(red: 0.886, green: 0.886, blue: 0.886, alpha: 1)
            return view
        }()
    
    private lazy var label3: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)

        view.font = .systemFont(ofSize: 14)
        
        view.textAlignment = .center

        view.text = "Or connect with social media"
            return view
        }()
    
    private lazy var button1: CustomButton = {
            let view = CustomButton()
        let backgroundImage:UIImage? = UIImage(named: "google")
            view.setBackgroundImage(backgroundImage, for: UIControl.State.normal)
            view.layer.cornerRadius = 10
            return view
        }()
    
    private lazy var button2: CustomButton = {
            let view = CustomButton()
        let backgroundImage:UIImage? = UIImage(named: "facebook")
        view.setBackgroundImage(backgroundImage, for: UIControl.State.normal)
            view.layer.cornerRadius = 15
            return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupSubView()
    
    }
    
    private func setupSubView() {
        
        view.backgroundColor = .white
        
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(2.5)
        }
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom)
            make.left.equalToSuperview().offset(view.frame.width / 15)
        }
        view.addSubview(imageView2)
        imageView2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(view.frame.height / 20)
            make.left.equalTo(label1)
            make.height.equalTo(view.frame.height / 30)
            make.width.equalTo(view.frame.width / 10)
        }
        view.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.top.equalTo(imageView2)
            make.left.equalTo(imageView2.snp.right).offset(view.frame.width / 20)
        }
        view.addSubview(view2)
        view2.snp.makeConstraints { make in
            make.top.equalTo(label2.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalTo(label2)
            make.left.equalTo(label1)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
            make.height.equalTo(2)
        }
        view.addSubview(label3)
        label3.snp.makeConstraints { make in
            make.centerX.equalTo(view2)
            make.top.equalTo(view2.snp.bottom).offset(view.frame.height / 40)
        }
        view.addSubview(button1)
        button1.snp.makeConstraints { make in
            make.top.equalTo(label3.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalTo(label3)
            make.width.equalToSuperview().dividedBy(1.1)
            make.height.equalToSuperview().dividedBy(10)
        }
        view.addSubview(button2)
        button2.snp.makeConstraints { make in
            make.top.equalTo(button1.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalTo(label3)
            make.width.equalToSuperview().dividedBy(1.1)
            make.height.equalToSuperview().dividedBy(10)
        }
    }
    
    private func setupViews() {
        button1.setOnClickListener { view in
            self.navigationController?.pushViewController(FourthViewController(), animated: true)
        }
        button2.setOnClickListener { view in
            self.navigationController?.pushViewController(FourthViewController(), animated: true)
        }
        }
        
}



