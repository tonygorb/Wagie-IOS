import UIKit

@IBDesignable
class RoundButton: UIButton {

    // button
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.updateView()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            self.updateView()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.updateView()
        }
    }
    
    // shadow
    @IBInspectable var shadowColor: UIColor = UIColor.black {
        didSet{
            self.updateView()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0 {
        didSet{
            self.updateView()
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 0){
        didSet{
            self.updateView()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0{
        didSet{
            self.updateView()
        }
    }
    
    
    func updateView(){
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.shadowColor = self.shadowColor.cgColor
        self.layer.shadowOpacity = self.shadowOpacity
        self.layer.shadowOffset = self.shadowOffset
        self.layer.shadowRadius = self.shadowRadius
    }
    
}
