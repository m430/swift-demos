import UIKit

// 初始化一个日期对象
var date = Date()

// 加60分钟
let nextHourDate = date.addingTimeInterval(60 * 60)

// 比较两个日期 -1表示小于，0表示等于，1表示大于
date.compare(nextHourDate).rawValue

// 日期的字符串形式
date.description

// 获得两个日期之间的差值，单位为秒
date.timeIntervalSince(nextHourDate)

// 从1970年1月1日0点起到现在多少秒
date.timeIntervalSince1970

// 指定日期与当前日期的差值
nextHourDate.timeIntervalSinceNow

// 实例化一个日期格式化对象
let fmt = DateFormatter()

// 设置日期格式化的本地属性
fmt.locale = Locale.current
// 设置日期格式化的全格式
fmt.dateStyle = DateFormatter.Style.full

// 对日期进行格式化
fmt.string(from: date)

// 使用long格式看一下
fmt.dateStyle = DateFormatter.Style.long
fmt.string(from: date)

// medium样式看一下
fmt.dateStyle = DateFormatter.Style.medium
fmt.string(from: date)

// short样式看一下
fmt.dateStyle = DateFormatter.Style.short
fmt.string(from: date)

// 自定义样式 12小时制
fmt.dateFormat = "yyyy-MM-dd hh:mm:ss"
fmt.string(from: date)

// 自定义样式 24小时制
fmt.dateFormat = "yyyy-MM-dd HH:mm:ss"
fmt.string(from: date)

// 只显示年月日
fmt.dateFormat = "yyyy-MM-dd"
fmt.string(from: date)

// 字符串转为日期
let dateString = "2018-10-10 12:00:00"
fmt.dateFormat = "yyyy-MM-dd HH:mm:ss"

let newDate = fmt.date(from: dateString)


// 获取用户当前日历
let calendar = Calendar.current
let today = Date()

let dateComponents = calendar.dateComponents([.era, .year, .month, .day, .hour, .minute, .second, .weekday], from: today)

dateComponents.era
dateComponents.year
dateComponents.month
dateComponents.day
dateComponents.hour
dateComponents.minute
dateComponents.second
dateComponents.weekday

// 初始化一个日期组件
var comp = DateComponents()
comp.year = 2018
comp.month = 10
comp.day = 10

// 日期对象生成一个日期
let compDate = calendar.date(from: comp)
