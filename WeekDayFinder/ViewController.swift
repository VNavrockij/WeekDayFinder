//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Vitalii Navrotskyi on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLable: UILabel!
    
    @IBAction func findWeekDay() {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTF.text!)
        dateComponents.month = Int(monthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let date = calendar.date(from: dateComponents)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date!)
        
        resultLable.text = weekDay

        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

