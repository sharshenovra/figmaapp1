//
//  SixthViewController.swift
//  figmaapp1
//
//  Created by Ruslan Sharshenov on 06.01.2022.
//

import UIKit
import SnapKit

class SixthViewController: UIViewController {

    private lazy var imageView1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "Vector")
        return view
    }()
    
    private lazy var imageView2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "illustration")
        return view
    }()
    
    private lazy var label1: UILabel = {
            let view = UILabel()
        view.textColor = .black
        view.font = .systemFont(ofSize: 20, weight: .semibold)
        view.textAlignment = .center
        view.text = "Select your location"
            return view
        }()
    
    private lazy var label2: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.486, green: 0.486, blue: 0.486, alpha: 1)
        view.font = UIFont.systemFont(ofSize: 12, weight: .thin)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.adjustsFontSizeToFitWidth = true
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.8
        view.textAlignment = .center
        view.attributedText = NSMutableAttributedString(string: "Switch on your location to stay in tune with\nwhat’s happening in your area\n", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
            return view
        }()
    
    private lazy var label3: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        view.font = .systemFont(ofSize: 14, weight: .semibold)
        view.textAlignment = .left
        view.text = "Your Zone"
            return view
        }()
    
    private lazy var label4: UILabel = {
            let view = UILabel()
        view.textColor = .black
        view.font = .rounded(ofSize: 14, weight: .semibold)
        view.textAlignment = .left
        view.text = "Banasree"
            return view
        }()
    
    private lazy var imageView3: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "Vector1")
        return view
    }()
    
    private lazy var view2: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(red: 0.886, green: 0.886, blue: 0.886, alpha: 1)
            return view
        }()
    
    private lazy var label5: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        view.font = .systemFont(ofSize: 14, weight: .semibold)
        view.textAlignment = .left
        view.text = "Your Area"
            return view
        }()
    
    private lazy var label6: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.486, green: 0.486, blue: 0.486, alpha: 1)
        view.font = .rounded(ofSize: 14, weight: .regular)
        view.textAlignment = .left
        view.text = "Types of your area"
            return view
        }()
    
    private lazy var imageView4: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "Vector1")
        return view
    }()
    
    private lazy var view3: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(red: 0.886, green: 0.886, blue: 0.886, alpha: 1)
            return view
        }()
    
    private lazy var button1: CustomButton = {
            let view = CustomButton()
            view.setTitle("Submit", for: .normal)
            view.backgroundColor = UIColor(red: 0.325, green: 0.694, blue: 0.459, alpha: 1)
            view.titleLabel!.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
            view.layer.cornerRadius = 15
            return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubview()
        setupViews()
    }
    
    private func setupSubview(){
        view.backgroundColor = .white
        
        view.addSubview(imageView1)
        imageView1.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(view.frame.width / 15)
            make.width.equalTo(view.frame.width / 30)
            make.height.equalTo(view.frame.width / 20)
        }
        
        view.addSubview(imageView2)
        imageView2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageView1.snp.bottom).offset(view.frame.height / 15)
            make.height.equalTo(view.frame.height / 5)
            make.width.equalTo(view.frame.width / 2)
        }
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.top.equalTo(imageView2.snp.bottom).offset(view.frame.height / 20)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(view.frame.height / 30)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.3)
        }
        
        view.addSubview(label3)
        label3.snp.makeConstraints { make in
            make.left.equalTo(imageView1)
            make.top.equalTo(label2.snp.bottom).offset(view.frame.height / 50)
        }
        
        view.addSubview(label4)
        label4.snp.makeConstraints { make in
            make.left.equalTo(imageView1)
            make.top.equalTo(label3.snp.bottom).offset(view.frame.height / 30)
        }
        
        view.addSubview(imageView3)
        imageView3.snp.makeConstraints { make in
            make.top.equalTo(label4)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
        }
        
        view.addSubview(view2)
        view2.snp.makeConstraints { make in
            make.top.equalTo(label4.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalTo(label4)
            make.left.equalTo(label4)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
            make.height.equalTo(2)
        }
        
        view.addSubview(label5)
        label5.snp.makeConstraints { make in
            make.left.equalTo(imageView1)
            make.top.equalTo(view2.snp.bottom).offset(view.frame.height / 40)
        }
        
        view.addSubview(label6)
        label6.snp.makeConstraints { make in
            make.left.equalTo(imageView1)
            make.top.equalTo(label5.snp.bottom).offset(view.frame.height / 30)
        }
        
        view.addSubview(imageView4)
        imageView4.snp.makeConstraints { make in
            make.top.equalTo(label6)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
        }
        
        view.addSubview(view3)
        view3.snp.makeConstraints { make in
            make.top.equalTo(label6.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalTo(label6)
            make.left.equalTo(label6)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
            make.height.equalTo(2)
        }
        view.addSubview(button1)
        button1.snp.makeConstraints { make in
            make.top.equalTo(view3.snp.bottom).offset(view.frame.width / 30)
            make.centerX.equalTo(label1)
            make.height.equalTo(view.frame.height / 10)
            make.width.equalToSuperview().dividedBy(1.2)
        }
    }
    
    private func setupViews(){
        button1.setOnClickListener { view in
            self.navigationController?.pushViewController(SeventhViewController(), animated: true)
        }
    }
}
