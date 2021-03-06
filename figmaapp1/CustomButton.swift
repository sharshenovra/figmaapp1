import Foundation
import UIKit

class CustomButton: UIButton {
    
    private var onClick: (CustomButton) -> Void = { _ in }
    
    func setOnClickListener(onClick: @escaping (CustomButton) -> Void) {
        self.onClick = onClick
        addTarget(nil, action: #selector(clickButton(view:)), for: .touchUpInside)
    }
    
    @objc func clickButton(view: UIButton) {
        onClick(self)
    }
}
