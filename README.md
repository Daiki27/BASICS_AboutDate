# BASICS_AboutDate

### 現在の年・月・日にち・曜日・タイムゾーンの取得
```
let myCalendar = Calendar(identifier: .gregorian)
let ymdwt = myCalendar.dateComponents([.year, .month, .day, .weekday, .timeZone], from: Date())
print(ymdwt)
```

### 位置情報の取得


### 天気の取得
[OpenWeather社](https://openweathermap.org)の[WhetherAPI](https://openweathermap.org/api)を使用して天気を取得することができる.
