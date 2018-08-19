
import UIKit

class ThirdScreenViewController: UIViewController {
    
    var hourly = ""
    var dailyMax:Float = 8.36
    var dailyResult:Float = 0
    var weeklyResult:Float = 0
    var monthlyResult: Float = 0
    var yearlyResult: Float = 0

    
    var buttonIsSelected = false
    
    @IBOutlet weak var dailyLabel: UILabel!
    @IBOutlet weak var weeklyLabel: UILabel!
    @IBOutlet weak var monthlyLabel: UILabel!
    @IBOutlet weak var yearlyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dailyLabel.isHidden = true
        weeklyLabel.isHidden = true
        monthlyLabel.isHidden = true
        yearlyLabel.isHidden = true
        
        DailyOnOff()
        weeklyOnOff()
        MonthlyOnOff()
        yearlyOnOff()
    }
    
    // Daily Button
    @IBAction func dailyButton(_ sender: Any) {
        buttonIsSelected = !buttonIsSelected
        DailyOnOff()
    }
    
    // Weekly Button
    @IBAction func weeklyButton(_ sender: Any) {
        buttonIsSelected = !buttonIsSelected
        weeklyOnOff()
    }
    
    // Monthly Button
    @IBAction func monthlyButton(_ sender: Any) {
        buttonIsSelected = !buttonIsSelected
        MonthlyOnOff()
    }
    
    // Yearly Button
    @IBAction func yearlyButton(_ sender: Any) {
        buttonIsSelected = !buttonIsSelected
        yearlyOnOff()
    }
    
    func DailyOnOff(){
        if buttonIsSelected {
            dailyLabel.isHidden = false
        } else {
            dailyLabel.isHidden = true
            
            dailyResult = Float(hourly)! * dailyMax
            dailyLabel.text = String(dailyResult)+" שקלים"
        }
    }
    
    func weeklyOnOff(){
        if buttonIsSelected {
            weeklyLabel.isHidden = false
        } else {
            weeklyLabel.isHidden = true
            
            weeklyResult = (Float(hourly)! * dailyMax) * 5
            weeklyLabel.text = String(weeklyResult)+" שקלים"
            
        }
    }
    
    func MonthlyOnOff(){
        if buttonIsSelected {
            monthlyLabel.isHidden = false
        } else {
            monthlyLabel.isHidden = true
            
            monthlyResult = ((Float(hourly)! * dailyMax) * 5) * 4
            monthlyLabel.text = String(monthlyResult)+" שקלים"
        }
    }
    
    func yearlyOnOff(){
        if buttonIsSelected {
            yearlyLabel.isHidden = false
        } else {
            yearlyLabel.isHidden = true
            
            yearlyResult = (Float(hourly)! * dailyMax) * 365
            yearlyLabel.text = String(yearlyResult)+" שקלים"
        }
    }
    
}
