# BASICS_AboutDate

### 現在の年・月・日にち・曜日・タイムゾーンの取得
```
let myCalendar = Calendar(identifier: .gregorian)
let ymdwt = myCalendar.dateComponents([.year, .month, .day, .weekday, .timeZone], from: Date())
print(ymdwt)
```
DataComponents型からIntへの変換の仕方[ref](https://stackoverflow.com/questions/56011193/convert-datecomponent-to-int).
```
let year = myCalendar.dateComponents([.year], from: Date())
yearInt = year.year
```

### 位置情報の取得
* FrameWork : [Core Location](https://developer.apple.com/documentation/corelocation/)を使用する.
   * Obtain the geographic location and orientation of a device.
   * デバイスの地理的な位置と方向を取得する。
   * Core Locationサービスの設定、起動、停止を行うには, CLLocationManagerクラスのインスタンスを使用する.
   * 位置情報サービスを利用するには, アプリが認証を要求し, システムがユーザに認証の可否を促します。

### 天気の取得
[OpenWeather社](https://openweathermap.org)の[WhetherAPI](https://openweathermap.org/api)を使用して天気を取得することができる.
