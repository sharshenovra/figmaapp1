//
//  FourthViewController.swift
//  figmaapp1
//
//  Created by Ruslan Sharshenov on 06.01.2022.
//

import UIKit
import SnapKit

class FifthViewController: UIViewController {

    
    private lazy var imageView1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "Vector")
        return view
    }()
    
    private lazy var label1: UILabel = {
            let view = UILabel()
        view.textColor = .black
        view.font = .systemFont(ofSize: 20, weight: .semibold)
        view.textAlignment = .left
        view.text = "Enter your 4-digit code"
            return view
        }()
    
    private lazy var label2: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        view.font = .systemFont(ofSize: 14, weight: .semibold)
        view.textAlignment = .center
        view.text = "Code"
            return view
        }()
    
    private lazy var label3: UILabel = {
            let view = UILabel()
        view.textColor = .black
        view.text = "- - - -"
        view.font = .systemFont(ofSize: 20)
            return view
        }()
    
    private lazy var view2: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(red: 0.886, green: 0.886, blue: 0.886, alpha: 1)
            return view
        }()
    
    private lazy var label4: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.325, green: 0.694, blue: 0.459, alpha: 1)
        view.text = "Resend Code"
        view.font = .systemFont(ofSize: 17)
            return view
        }()
    
    private lazy var button1: CustomButton = {
            let view = CustomButton()
            let backgroundImage:UIImage? = UIImage(named: "Group 6802")
            view.setBackgroundImage(backgroundImage, for: UIControl.State.normal)
            return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    setupViews()
        setupSubview()
    }
    
    private func setupSubview(){
        view.backgroundColor = .white
        
        view.addSubview(imageView1)
        imageView1.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(view.frame.width / 15)
            make.width.equalTo(view.frame.width / 30)
            make.height.equalTo(view.frame.width / 20)
        }
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.left.equalTo(imageView1)
            make.top.equalTo(imageView1.snp.bottom).offset(view.frame.height / 5)
        }
        
        view.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.left.equalTo(imageView1)
            make.top.equalTo(label1.snp.bottom).offset(view.frame.height / 15)
        }
        
        view.addSubview(label3)
        label3.snp.makeConstraints { make in
            make.top.equalTo(label2.snp.bottom).offset(view.frame.height / 20)
            make.left.equalTo(label2)
            make.height.equalTo(view.frame.height / 30)
            make.width.equalTo(view.frame.width / 10)
        }
        
        view.addSubview(view2)
        view2.snp.makeConstraints { make in
            make.top.equalTo(label3.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalTo(label3)
            make.left.equalTo(label3)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
            make.height.equalTo(2)
        }
        
        view.addSubview(button1)
        button1.snp.makeConstraints { make in
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
            make.top.equalTo(view2.snp.bottom).offset(view.frame.height / 5)
        }
        
        view.addSubview(label4)
        label4.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width / 15)
            make.top.equalTo(view2.snp.bottom).offset(view.frame.height / 5)
        }
    }
    private func setupViews(){
        button1.setOnClickListener { view in
            self.navigationController?.pushViewController(SixthViewController(), animated: true)
        }
    }
    
}
