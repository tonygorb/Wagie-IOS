
import UIKit

class SecondScreenViewController: UIViewController, UITextFieldDelegate {
    
    var hRate = ""
    
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var hourlyRate: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorMessage.isHidden = true
        
        self.hourlyRate.delegate = self
    }
    
    
    // Text characters : NUMBERS only
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of:characterSet)
    }

    
    
    
    // Opens Third View Controller
    @IBAction func thirdView(_ sender: Any) {

        if (hourlyRate.text != nil) {
            errorMessage.isEnabled = true
        } else {
            self.hRate = hourlyRate.text!
            performSegue(withIdentifier: "thirdScreen", sender: self)
        }
    }
    
    // Checks if input is empty
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (hourlyRate.text?.isEmpty)! {
            print("empty")
            errorMessage.isHidden = false
            return false
        } else{
            print("not empty")
            return true
        }
    }
    
    // Send hourlyRate to Third View Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ThirdScreenViewController
        vc.hourly = hourlyRate.text!
    }
    
}
