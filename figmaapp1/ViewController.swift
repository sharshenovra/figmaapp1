import Foundation
import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var image1: UIImageView = {
            let view = UIImageView()
            view.image = UIImage(named: "markovka")
            return view
        }()

    private lazy var label1: UILabel = {
            let view = UILabel()
        view.text = "nectar"
        view.textColor = .white
        view.font = .rounded(ofSize: 55, weight: .medium)
            return view
        }()

    private lazy var label2: UILabel = {
            let view = UILabel()
        view.textColor = .white
        view.font = UIFont(name: "Gilroy-Medium-", size: 14)
        view.adjustsFontSizeToFitWidth = true
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.05
        view.textAlignment = .center
        view.attributedText = NSMutableAttributedString(string: "online groceriet", attributes: [NSAttributedString.Key.kern: 5.5, NSAttributedString.Key.paragraphStyle: paragraphStyle])
            return view
        }()
    
    private lazy var button1: CustomButton = {
            let view = CustomButton()
            view.setTitle("N E X T", for: .normal)
            view.setTitleColor(.systemBlue, for: .normal)
            return view
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
        setupViews()
    }

    private func setupSubView() {
        
        view.backgroundColor = UIColor(red: 0.325, green: 0.694, blue: 0.459, alpha: 1)
        
        view.addSubview(image1)
        image1.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width / 7)
            make.centerY.equalToSuperview()
            make.height.equalToSuperview().dividedBy(9)
            make.width.equalToSuperview().dividedBy(6)
        }
        
        view.addSubview(button1)
        button1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.height / 10)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.left.equalTo(image1.snp.right).offset(view.frame.width / 20)
            make.right.equalToSuperview().offset((view.frame.width) / (-7))
            make.centerY.equalToSuperview().offset((view.frame.height) / (-50))
            make.height.equalToSuperview().dividedBy(15)
        }
        
        view.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom)
            make.left.equalTo(image1.snp.right).offset(view.frame.width / 20)
            make.width.equalTo(label1)
        }
    }
    
    private func setupViews() {
        button1.setOnClickListener { view in
            self.navigationController?.pushViewController(SecondViewController(), animated: true)
        }
        }
    
    }

extension UIFont {
    class func rounded(ofSize size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let systemFont = UIFont.systemFont(ofSize: size, weight: weight)

        guard #available(iOS 13.0, *), let descriptor = systemFont.fontDescriptor.withDesign(.rounded) else { return systemFont }
        return UIFont(descriptor: descriptor, size: size)
    }
}

