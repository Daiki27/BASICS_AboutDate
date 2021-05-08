//
//  ViewController.swift
//  BASICS_AboutDate
//
//  Created by 樋口大樹 on 2021/05/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(Calendar.current.component(.year, from: Date()))
        let myCalendar = Calendar(identifier: .gregorian)
        let ymd = myCalendar.dateComponents([.year, .month, .day, .weekday, .timeZone], from: Date())
        print(ymd)
    }


}

