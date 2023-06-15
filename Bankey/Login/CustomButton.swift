



import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        // Set background image for different button states
        setBackgroundImage(UIImage(named: "btn-img"), for: .normal)
        setBackgroundImage(UIImage(named: "btn-img2"), for: .highlighted)
        
        // Set attributed title for different button states
        let normalAttributedTitle = NSAttributedString(string: "    Daxil ol", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .bold),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ])
        
        setAttributedTitle(normalAttributedTitle, for: .normal)
        
        let highlightedAttributedTitle = NSAttributedString(string: "    Daxil ol", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .bold),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ])
        setAttributedTitle(highlightedAttributedTitle, for: .highlighted)
        
    }
}
