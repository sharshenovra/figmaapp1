//
//  SeventhViewController.swift
//  figmaapp1
//
//  Created by Ruslan Sharshenov on 06.01.2022.
//

import UIKit
import SnapKit

class SeventhViewController: UIViewController {

    private lazy var imageView1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(named: "Group")
        return view
    }()
    
    private lazy var label1: UILabel = {
            let view = UILabel()
        view.textColor = .black

        view.font = .systemFont(ofSize: 20, weight: .bold)
        
        view.textAlignment = .center

        view.text = "Loging"
            return view
        }()
    
    private lazy var label2: UILabel = {
            let view = UILabel()
        view.textColor = .black

        view.font = .systemFont(ofSize: 14, weight: .thin)
        
        view.textAlignment = .center

        view.text = "Enter your emails and password"
            return view
        }()
    
    private lazy var label3: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)

        view.font = .systemFont(ofSize: 14, weight: .semibold)
        
        view.textAlignment = .left

        view.text = "Email"
            return view
        }()
    
    private lazy var label4: UILabel = {
            let view = UILabel()
        view.textColor = .black

        view.font = .rounded(ofSize: 14, weight: .semibold)
        
        view.textAlignment = .left

        view.text = "imshuvo97@gmail.com"
            return view
        }()
    
    private lazy var view1: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(red: 0.886, green: 0.886, blue: 0.886, alpha: 1)
            return view
        }()
    
    private lazy var label5: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)

        view.font = .systemFont(ofSize: 14, weight: .semibold)
        
        view.textAlignment = .left

        view.text = "Password"
            return view
        }()
    
    private lazy var label6: UILabel = {
            let view = UILabel()
        view.textColor = .black
        view.font = .rounded(ofSize: 20, weight: .bold)
        
        view.textAlignment = .left

        view.text = "• • • • • • •"
            return view
        }()
    
    private lazy var imageView4: UIImageView = {
        let view = UIImageView()
        view.image = UIImage.init(systemName: "eye.slash")
        view.tintColor = .gray
        return view
    }()
    
    private lazy var view3: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(red: 0.886, green: 0.886, blue: 0.886, alpha: 1)
            return view
        }()
    
    private lazy var label7: UILabel = {
            let view = UILabel()
        view.textColor = .black

        view.font = .systemFont(ofSize: 10, weight: .bold)
        
        view.textAlignment = .center

        view.text = "Forgot Password?"
            return view
        }()
    
    private lazy var button1: CustomButton = {
            let view = CustomButton()
            view.setTitle("Log In", for: .normal)
            view.backgroundColor = UIColor(red: 0.325, green: 0.694, blue: 0.459, alpha: 1)
            view.titleLabel!.font = UIFont.systemFont(ofSize: 15, weight: .regular)
            view.layer.cornerRadius = 15
            return view
        }()
    
    private lazy var label8: UILabel = {
            let view = UILabel()
        view.textColor = .black

        view.font = .systemFont(ofSize: 14, weight: .semibold)
        
        view.textAlignment = .left

        view.text = "Don't have account?"
            return view
        }()
    private lazy var label9: UILabel = {
            let view = UILabel()
        view.textColor = UIColor(red: 0.325, green: 0.694, blue: 0.459, alpha: 1)

        view.font = .systemFont(ofSize: 14, weight: .semibold)
        
        view.textAlignment = .left

        view.text = "Sign up"
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
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(view.frame.height / 10)
        }
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width / 15)
            make.top.equalTo(imageView1).offset(view.frame.height / 5)
        }
        
        view.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(view.frame.height / 60)
            make.left.equalTo(label1)
        }
        
        view.addSubview(label3)
        label3.snp.makeConstraints { make in
            make.top.equalTo(label2.snp.bottom).offset(view.frame.height / 20)
            make.left.equalTo(label2)
        }
        
        view.addSubview(label4)
        label4.snp.makeConstraints { make in
            make.top.equalTo(label3.snp.bottom).offset(view.frame.height / 40)
            make.left.equalTo(label3)
        }
        
        view.addSubview(view1)
        view1.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.left.equalTo(label4)
            make.top.equalTo(label4.snp.bottom).offset(view.frame.height / 40)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
        }
        
        view.addSubview(label5)
        label5.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.bottom).offset(view.frame.height / 20)
            make.left.equalTo(label2)
        }
        
        view.addSubview(label6)
        label6.snp.makeConstraints { make in
            make.top.equalTo(label5.snp.bottom).offset(view.frame.height / 40)
            make.left.equalTo(label5)
        }
        
        view.addSubview(imageView4)
        imageView4.snp.makeConstraints { make in
            make.centerY.equalTo(label6)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
        }
        
        view.addSubview(view3)
        view3.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.left.equalTo(label4)
            make.top.equalTo(label6.snp.bottom).offset(view.frame.height / 40)
            make.right.equalToSuperview().offset((view.frame.width) / (-15))
        }
        
        view.addSubview(label7)
        label7.snp.makeConstraints { make in
            make.right.equalTo(view3)
            make.top.equalTo(view3.snp.bottom).offset(view.frame.height / 50)
        }
        
        view.addSubview(button1)
        button1.snp.makeConstraints { make in
            make.top.equalTo(label7.snp.bottom).offset(view.frame.width / 30)
            make.centerX.equalTo(view3)
            make.height.equalTo(view.frame.height / 10)
            make.width.equalToSuperview().dividedBy(1.2)
        }
        
        view.addSubview(label8)
        label8.snp.makeConstraints { make in
            make.top.equalTo(button1.snp.bottom).offset(view.frame.width / 40)
            make.left.equalTo(button1).offset(view.frame.width / 10)
        }
        view.addSubview(label9)
        label9.snp.makeConstraints { make in
            make.left.equalTo(label8.snp.right).offset(view.frame.width / 40)
            make.top.equalTo(label8)
        }
    }
    private func setupViews(){
        button1.setOnClickListener { view in
            self.navigationController?.pushViewController(EightsViewController(), animated: true)
        }
    }
}
