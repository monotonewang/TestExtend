import Cocoa

var str = "Hello, playground"
//this is comment
/*this is comment*/
print(str)
print("IOS Player")
typealias Feet = Int
let distance: Feet = 100
print("IOS Player=",distance)

var nameString = "baidu"
var site = "http://www.baidu.com"

print("\(nameString)的官网地址为：\(site)")

var myString:String?=nil

if myString != nil {
    print(myString)
    print(myString!)
    print(myString?.count)
}else{
    print("字符串为 nil")
}

//可选绑定
//如果 myString 返回的可选 Int 包含一个值，创建常量 yourString，并将可选包含的值赋给它
if let yourString = myString{
    print("yourvalue\(yourString)")
}else{
    print("no value")
}
//常量
let constValue=42

print(constValue)

let decimalInteger = 17           // 17 - 十进制表示
let binaryInteger = 0b10001       // 17 - 二进制表示
let octalInteger = 0o21           // 17 - 八进制表示
let hexadecimalInteger = 0x11     // 17 - 十六进制表示
let decimalDouble = 12.1875       //十进制浮点型字面量
let exponentDouble = 1.21875e1    //十进制浮点型字面量
let hexadecimalDouble = 0xC.3p0   //十六进制浮点型字面量

let stringL = "Hello\tWorld\n\n菜鸟教程官网：\'http://www.runoob.com\'"
print(stringL)

var A = 10
var B = 20

print("A + B 结果为：\(A + B)")
print("A - B 结果为：\(A - B)")
print("A * B 结果为：\(A * B)")
print("B / A 结果为：\(B / A)")
A += 1   // 类似 A++
print("A += 1 后 A 的值为 \(A)")
B -= 1   // 类似 B--
print("B -= 1 后 B 的值为 \(B)")

print("A == B 结果为：\(A == B)")
print("A != B 结果为：\(A != B)")
print("A > B 结果为：\(A > B)")
print("A < B 结果为：\(A < B)")
print("A >= B 结果为：\(A >= B)")
print("A <= B 结果为：\(A <= B)")
var A1=true
var B1=false
print("A && B 结果为：\(A1 && B1)")
print("A || B 结果为：\(A1 || B1)")
print("!A 结果为：\(!A1)")
print("!B 结果为：\(!B1)")

print("A&B 结果为：\(A&B)")
print("A|B 结果为：\(A|B)")
print("A^B 结果为：\(A^B)")
print("~A 结果为：\(~A)")

var C=100

C = A + B
print("C 结果为：\(C)")

C += A
print("C 结果为：\(C)")

C -= A
print("C 结果为：\(C)")

C *= A
print("C 结果为：\(C)")

C /= A
print("C 结果为：\(C)")

print("闭区间运算符:")
for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}
print("半开区间运算符:")
for index in 1..<5 {
    print("\(index) * 5 = \(index * 5)")
}
var D=false
print("-A 的值为：\(-A)")
print("A + B 的值为：\(A + B)")
print("三元运算：\(D ? A : B )")
print("三元运算：\(D ? A : B )")

// 使用字符串字面量创建空字符串
var stringA = ""
if stringA.isEmpty {
    print( "stringA 是空的" )
} else {
    print( "stringA 不是空的" )
}

print( "\(stringA), 长度为 \(stringA.count)" )

for code in nameString.utf8 {
    print("utf8 \(code) ")
}

for code in nameString.utf16 {
    print("utf16 \(code) ")
}

let char1: Character = "A"

print("char1 的值为 \(char1)")

for ch in nameString {
    print(ch)
}
nameString.append("xx")
print(nameString)
//array
var someInts:[Int] = [10, 20, 30]
someInts += [40]
someInts[0] = 5
//repeating是初始值
var someIntss = [Int](repeating: 1, count: 3)
print(someInts)
print(someIntss)
for (index, item) in someInts.enumerated() {
    print("在 index = \(index) 位置上的值为 \(item)")
}

print("someInts 元素个数为 \(someInts.count)")
print("someInts 元素个数为 \(someInts.isEmpty)")
//directary
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var oldVal = someDict.updateValue("Two 新的值", forKey: 2)
print( "key = 2 的值为 \(someDict[2]!)" )
var removedValue = someDict.removeValue(forKey: 2)//已经移除的value

print( "removedValue 的值为 \(someDict[2]) (removedValue!=nil)?\(removedValue):'x'" )
for (key, value) in someDict {
    print("字典 key \(key) -  字典 value \(value)")
}

for (key, value) in someDict.enumerated() {
    print("字典 key \(key) -  字典 (key, value) 对 \(value)")
}
print("someDict count = \(someDict.count)")
print("someDict isEmpty = \(someDict.isEmpty)")
//funcation
func runoob(site: String) -> String {
    return (site)
}
print(runoob(site: "www.runoob.com"))
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("最小值为 \(bounds.min) ，最大值为 \(bounds.max)")

func pow(firstArg a: Int, secondArg b: Int) -> Int {
    var res = a
    for _ in 1..<b {
        res = res * a
    }
    print(res)
    return res
}
pow(firstArg:2, secondArg:3)
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var x = 1
var y = 5
swapTwoInts(&x, &y)
print("x 现在的值 \(x), y 现在的值 \(y)")
func sum(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = sum
print("输出结果: \(addition(40, 89))")
//函数嵌套
func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement -= total
        return overallDecrement
    }
    return decrementer
}
let decrem = calcDecrement(forDecrement: 30)
print(decrem())
//闭包

//声明
var myClosure: () -> String
//var myClosure: () -> Void

myClosure = {
    print("Hello world")
    //这里根据 返回值类型予以纠正
    //() -> String
    return "anyThing"
}

var value=myClosure()
print(value)

//in 可以看做是一个分割符，他把该闭包的类型和闭包的函数体分开，in前面是该闭包的类型，in后面是具体闭包调用时保存的需要执行的代码。
var mySecondClosure:(_ a:Int,_ b:Int) -> Int = {
    (a:Int,b:Int) -> Int in
//    (a:Int,b:Int) -> Int
    return a*b
}
print(mySecondClosure(1,2))
//第二种方式
let closure2:(Int,Int)->Int
closure2 = {
//    (a,b)->Int in
    (a,b) in
    return a+b
}
print(closure2(1,2))
//第三种方式
let closure3:(Int,Int)->Int
closure3 = {
    return $0+$1
}
print(closure3(1,2))
let closure4 = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}
print("closure4=",closure4(200, 20))

let names = ["AT", "AE", "D", "S", "BE"]

// 使用普通函数(或内嵌函数)提供排序功能,闭包函数类型需为(String, String) -> Bool。
func backwards(s1: String, s2: String) -> Bool {
    return s1 < s2
}
var reversed = names.sorted(by: backwards)
//尾随闭包
var reversed2 = names.sorted() { $0 > $1 }
print(reversed)
print(reversed2)
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)

// 返回的值为10
print(incrementByTen())
//枚举
enum DaysofaWeek {
    case Sunday
    case Monday
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case Saturday
}
var weekDay = DaysofaWeek.THURSDAY
weekDay = .THURSDAY
switch weekDay
{
case .Sunday:
    print("星期天")
case .Monday:
    print("星期一")
case .TUESDAY:
    print("星期二")
case .WEDNESDAY:
    print("星期三")
case .THURSDAY:
    print("星期四",DaysofaWeek.TUESDAY)
case .FRIDAY:
    print("星期五")
case .Saturday:
    print("星期六")
}
//结构体
struct StudentMarks {
    var name :String
    var age :Int
    var height :Double
    
    init(_ name : String ,age: Int,height : Double) {
        self.name = name;
        self.age = age;
        self.height = height;
    }
    //在实例方法中修改值类型 保留了原始结构，又可以获得新的结果
    mutating func scaleBy(res: Int) {
        age *= res
        print(age)
    }
    static func abs(number: Int) -> Int
    {
        if number < 0
        {
            return (-number)
        }
        else
        {
            return number
        }
    }
}
let name:String="xiaoming"

var marks = StudentMarks(name , age:12 , height:1.22)
print("Mark1 是 \(marks) age=\(marks.age)")
marks.scaleBy(res: 3)
print(StudentMarks.abs(number: -3))
//类
class Student{
    var studname: String{
        //属性观察器
        willSet(newTotal){
            print("计数器: \(newTotal)")
        }
        didSet{
            print("didSet \( oldValue)")
            if studname > oldValue {
                print("新增数 \(studname ),\( oldValue)")
            }
        }
    }
    var score: Int
    var mark2: Int
    //下标脚本语法及应用
    subscript(index: Int) -> Int {
        return score / index
    }
    var metaInfo: [String:String] {
        return [
            "head": self.studname,
            "duration":"\(self.mark2)"
        ]
    }

    init(studentname:String,score:Int,mark2:Int){
        self.studname = studentname
        self.score = score
        self.mark2 = mark2
    }
    
 
}

let stMarks = Student(studentname: "test",score: 4,mark2: 2)
print("学生姓名为 \(stMarks.studname)")
print("学生为 \(stMarks.metaInfo["head"]!)")
print("学生score为 \(stMarks[2])")
stMarks.studname="banks"
