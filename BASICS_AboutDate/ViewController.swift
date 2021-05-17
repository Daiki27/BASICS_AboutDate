//
//  ViewController.swift
//  BASICS_AboutDate
//
//  Created by 樋口大樹 on 2021/05/07.
//

import UIKit
import CoreLocation
 
class ViewController: UIViewController , CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager!
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var logLabel: UILabel!
    @IBOutlet weak var todayDateLabel: UILabel!
    
    // 測位精度
    let locationAccuracy: [Double] = [
        kCLLocationAccuracyBestForNavigation,
        kCLLocationAccuracyBest,
        kCLLocationAccuracyNearestTenMeters,
        kCLLocationAccuracyHundredMeters,
        kCLLocationAccuracyKilometer,
        kCLLocationAccuracyThreeKilometers
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //現在の日程を取得.
        let myCalendar = Calendar(identifier: .gregorian)
        let ymdwt = myCalendar.dateComponents([.year, .month, .day, .weekday, .timeZone], from: Date())
        let year = myCalendar.dateComponents([.year], from: Date())
        let month = myCalendar.dateComponents([.month], from: Date())
        todayDateLabel?.text = String(year.year!) + "年" + String(month.month!) + "月"
        //現在位置の取得.
        
        // locationManager初期化
        locationManager = CLLocationManager()
        
        // ユーザーの使用許可を確認
        locationManager.requestWhenInUseAuthorization()
        
        // 使用許可に対するステータス
        let status = CLLocationManager.authorizationStatus()

        if status == .authorizedWhenInUse {
            
            // delegateを設定
            locationManager.delegate = self
 
            // 測位精度の設定
            locationManager.desiredAccuracy = locationAccuracy[1]
            
            // アップデートする距離半径(m)
            locationManager.distanceFilter = 10
 
            // 位置情報の取得を開始
            locationManager.startUpdatingLocation()
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager,
                didUpdateLocations locations: [CLLocation]) {
        //最初のデータ
        let location = locations.first

        print("Here")
        //緯度
        let latitude = location?.coordinate.latitude
        //経度
        let longitude = location?.coordinate.longitude

        //小数２桁にする
        let latitudeDisplay = round(latitude!*10)/10
        let longitudeDisplay = round(longitude!*10)/10
        
        latLabel?.text = "緯度：" + String(latitudeDisplay)
        logLabel?.text = "経度：" + String(longitudeDisplay)
        
        print("latitude: \(latitude!)")
        print("longitude: \(longitude!)")
    }
 
}
