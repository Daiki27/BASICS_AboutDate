# BASICS_AboutDate

## 現在の年・月・日にち・曜日・タイムゾーンの取得.
```
let myCalendar = Calendar(identifier: .gregorian)
let ymdwt = myCalendar.dateComponents([.year, .month, .day, .weekday, .timeZone], from: Date())
print(ymdwt)
```
