//
//  ViewController.swift
//  SwiftBase2021
//
//  Created by LHWen on 2021/4/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /* 字面量 表示
         * \0    空字符
         * \\    反斜线 \
         * \b    退格(BS) ，将当前位置移到前一列
         * \f    换页(FF)，将当前位置移到下页开头
         * \n    换行符
         * \r    回车符
         * \t    水平制表符
         * \v    垂直制表符
         * \'    单引号
         * \"    双引号
         * \000    1到3位八进制数所代表的任意字符
         * \xhh...    1到2位十六进制所代表的任意字符
         */
        
        // 基本语法
        baseMakeSwift()
        // 基本数据类型
        dataType()
        // 变量
        variableFunc()
        // 可选类型
        optionalsType()
        // 常量类型
        constantType()
        // 循环
        loopfunc()
        // 字符串处理
        stringFunc()
        // 数组
        arrayFunc()
        // 字典
        dictionaryFunc()
    }

    // 基本语法
    func baseMakeSwift() {
        // var 定义变量， let 定义常量不可变
        var myString = "Hello, world"
        myString += "!"
        print(myString)
        
        // 分号使用
        let letString = "分号表结束，在不换行情况下"; print(letString)
    }
    
    // 数据类型
    func dataType() {
        
        // swift 基本数据类型定义时，如果没有声明类型，swift会在编译的时候自动根据初始值进行推断
        
        /* int、UInt 在32位平台与64位平台长度形同的分别对应（Int32、Int64）(UInt32、Uint64) */
        let intT: Int = 100
        print(intT)
        
        /* Float（表32位浮点数，精确度要求不高选择此类型）、Double（表64位浮点数，存储大数据或者精确度要求高选择此类型） */
        // Double精确度很高，至少有15位数字，而 Float 最少只有6位数字。选择哪个类型取决于你的代码需要处理的值的范围。
        let f: Float = 3.14
        print(f)
        
        let d: Double = 3.14
        print(d)
        
        /*
         Bool = true、false
         字符串：String
         字符：Character 字符指的是单个字母 eg. "C"
         可选类型：Optional , 使用可选类型来处理可能缺失的情况，可选类型表示有值或者没值
         */
        
        let b: Bool = false
        if !b {
            print("b is false")
        }
        
        var str: String = "this is a string"
        let charS: Character = "C"
        str += " !"
        print(str)
        print(charS)
        
        /*
         类型别名：typealias newName = type
         eg: typealias Feet = Int
         let distance: Feet = 100 => let distance: Int = 100
         */
    }
    
    // 变量
    func variableFunc() {
        
        // 使用 var 声明变量
        var varA: Int = 42
        varA += 2; print(varA)
        
        var varB: Float
        varB = 3.1415
        print(varB)
        
        var c = 43
        // 以上对c未声明类型，默认推断 Int 使用运算符的时候需要类型相对
        c = c + 3
        print(c)
        
        // 变量输出语句
        let info = "计算结果是："
        print("c的\(info)\(c)")
    }
    
    // 可选类型
    func optionalsType() {
        // Optional 类型，用于处理值缺失情况。
        // 表示：那儿有一个值，并且它等于 X 或者 那儿没有值
        /* 以下两种声明都是相等的：
         var optionalInterger: Int?   // Int 和 ？之间 不能有空格
         var optionalInterger: Optional<Int>
         使用后缀操作符号 ! 来取值 -- 强制解析
         */
        var optionalInt: Int?
        optionalInt = 43
        // 43
        print("可选值optional取值方式: \(optionalInt!)")
        
        var oString: String? = nil
        
        if oString != nil {
            print(oString as Any)
        } else {
            print("string is nill")
        }
        
        // 强制解析 -> 当确认可选类型确认有值后，可在可选的名字后面加 ! 来获取
        print(oString as Any) // 使用 as Any 取值 打印 nil
        // 当可选类型 = nil 情况下使用 ! 进行强制解析回导致线程不安全，直接奔溃
        oString = "optional value"
        print(oString!)
        
        // 自动解析，在声明可选类型时，使用 ! 代替 ? 在取值的时候不需要加 ! 直接使用即可
        var osStr: String! = nil
        print("自动解析结果：\(osStr)")  // 自动解析结果：nil
        // 定义属性为 nil 可以使用 ?? 给定默认值
        print("自动解析使用 ?? 结果：\(osStr ?? "测试 ??")") // 自动解析使用 ?? 结果：测试 ??
        osStr = "已经赋值"
        print("自动解析使用 ?? 结果：\(osStr ?? "测试 ??")") // 自动解析使用 ?? 结果：已经赋值
        
        // 使用可选绑定（optional binding）来判断可选类型是否包含值，
        // 如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在if和while语句中来对可选类型的值进行判断并把值赋给一个常量或者变量
        var someOptional: String?
        someOptional = "Hello, Swift!"
        
        // 可选绑定不需要使用 ! 进行强制解析
        if let yourString = someOptional {
            print("你的字符串值为：\(yourString)")
        } else {
            print("你的字符串无值")
        }
        //  你的字符串值为：Hello, Swift!
    }
    
    // 常量类型
    func constantType() {
        // 常量类型使用 let 定义，一但初始化后就不能再改变值
        let constType: Int = 10
        
        let constTypeA: Int
        constTypeA = 100
        
        let constTypeB = 20
        
        print("constType: \(constType), constTypeA: \(constTypeA), constTypeB: \(constTypeB)")
    }
    
    // 循环
    func loopfunc() {
        
        // swift 3.0 for 循环被弃用
        for index in 1...5 {
            print(index) // 打印 1都到5
        }
        
        // swift 中 switch语句的 Fallthrough 语句使用
        
        let index = 10
        
        // 没有使用 fallthrough 执行 case 10,50
        switch index {
        case 100 :
            print("index 的值是 100")
        case 10,50 :
            print("index 的值是 10 或 50")
        case 5 :
            print("index 的值是 5")
        default:
            print("index 的值是默认返回")
        }
        
        // 使用 fallthrough 会执行 case 10,50 和 case 5
        switch index {
        case 100 :
            print("index 的值是 100")
        case 10,50 :
            print("index 的值是 10 或 50")
        fallthrough
        case 5 :
            print("index 的值是 5")
        default:
            print("index 的值是默认返回")
        }
    }

    // 字符串处理
    func stringFunc() {
        
        // 定义空字符串
        let stringA = ""
        // 判空
        if stringA.isEmpty {
            print("string is empty")
        }
        
        // 字符串长度判断
        let strLen = "这是一串字符串"
        print("\(strLen)，的长度为：\(strLen.count)") // 这是一串字符串，的长度为：7
        
        // 字符串比较
        let varA   = "Hello, Swift!"
        let varB   = "Hello, World!"

        if varA == varB {
           print( "\(varA) 与 \(varB) 是相等的" )
        } else {
            // 输出该语句
           print( "\(varA) 与 \(varB) 是不相等的" )
        }
        
        // Unicode 字符串
        let unicodeString = "菜鸟教程"
        print("UTF-8 CString: \(unicodeString.utf8CString)") // UTF-8 CString: [-24, -113, -100, -23, -72, -97, -26, -107, -103, -25, -88, -117, 0]
        print("UTF-8 编码: \(unicodeString.utf8)") // UTF-8 编码: 菜鸟教程
        for code in unicodeString.utf8 {
           print("\(code) ")
        }

        print("\n")

        print("UTF-16 编码: \(unicodeString.utf16)") // UTF-16 编码: 菜鸟教程
        for code in unicodeString.utf16 {
           print("\(code) ")
        }
        
        /* 字符串函数及运算符
         * string.isEmpty 判空
         * hasPrefix(prefix: String) 检查字符串是否拥有特定前缀
         * hasSuffix(suffix: String) 检查字符串是否拥有特定后缀
         * Int(String)转换字符串数字为整型
         * utf8 可以通过遍历 String 的 utf8 属性来访问它的 UTF-8 编码
         * utf16 可以通过遍历 String 的 utf16 属性来访问它的 UTF-8 编码
         * unicodeScalars 可以通过遍历String值的unicodeScalars属性来访问它的 Unicode 标量编码
         * == 判断两个字符串是否相等
         * split 分割字符串；数组 let fullNameArr = string.split{$0 == " "}.map(String.init)
         * tsString.reversed() 字符串逆序
         */
        
        /*
         print("---- 基于EnumeratedSequence的遍历 ----")
         for (index, ch) in tsString.enumerated() {
             print("\(index): \(ch)")
         }
         */
        
        let tsString = "test这是一段测试使用的 字符串!"
        if tsString.hasPrefix("test") {
            print("字符串是以test开头")
        }
        if tsString.hasSuffix("字符串!") {
            print("字符串是以(字符串!)结尾")
        }
        
        let myInt: Int? = Int(tsString)
        print("字符转整型：\(myInt ?? 0)") // tsString 不是数值字符串
        
        let nbrInt: Int? = Int("1234")
        print("数值字符串转整数：\(nbrInt ?? 123)")
        
        // 分割字符串
        let fullNameArr = tsString.split{$0 == " "}.map(String.init)
        print(fullNameArr[0]) // First test这是一段测试使用的
        print(fullNameArr[1]) // Last 字符串!
         
        // 字符串的遍历
        var i = 0
        for ch in tsString {
            print("\(i): \(ch)")
            i += 1
        }
        
        // 字符串逆序遍历
        var j = tsString.count
        for ch in tsString.reversed() {
            print("\(j): \(ch)")
            j -= 1
        }
        
        print("---- 基于索引的正序遍历 ----")
        for ic in 0..<tsString.count {
            // tsString.index(tsString.startIndex, offsetBy: ic) 返回的是索引
            let ch: Character = tsString[tsString.index(tsString.startIndex, offsetBy: ic)]
            print("\(ic): \(ch)")
        }
        
        print("---- 基于索引的逆序遍历 ----")
        //for i in stride(from: str.count - 1, to: -1, by: -1) {
        for ic in stride(from: tsString.count - 1, through: 0, by: -1) {
            let ch: Character = tsString[tsString.index(tsString.startIndex, offsetBy: ic)]
            print("\(ic): \(ch)")
        }

        print("---- 基于EnumeratedSequence的遍历 ----")
        for (ic, ch) in tsString.enumerated() {
            print("\(ic): \(ch)")
        }
         
        var varAStr: String = "Hello "
        let varBStr: Character = "G"

        varAStr.append(varBStr)

        print("varAStr =  \(varAStr)")
    }
    
    // 数组
    func arrayFunc() {
        
        // 创建空数组
        var oneArr: [Int] = []
        oneArr.append(123)
        oneArr.append(100)
        print(oneArr)
        // 遍历组数
        for i in oneArr {
            print(i) // 打印数组值
        }
        // 打印数组下标与值
        for (i, v) in oneArr.enumerated() {
            print("index: \(i), value: \(v)")
        }
        
        // 创建固定长度数组, int类型数组，初始值为0，长度为3
        var twoArr = [Int](repeating: 0, count: 3)
        twoArr[0] = 13
        twoArr.append(10)
        print(twoArr)
        
        let oneStrArr: [String] = ["String1", "String2", "String3"]
        let twoStrArr: [String] = ["Str1", "Str2"]
        print("one + two : \(oneStrArr + twoStrArr)")
        
        let emArr: [String] = []
        if emArr.isEmpty {
            print("数组为空")
        }
    }
    
    // 创建字典 字典使用 dict[key] 获取到的是可选值
    func dictionaryFunc() {
        
        // 创建字典 var dict: [keyType : ValueType] = [:]
        var dict: [String : String] = [:]
        // 根据key 更新value 如果key存在就更新，不存在就新增
        dict.updateValue("value1", forKey: "key1")
        dict.updateValue("value2", forKey: "key2")
        print(dict)
        
        // 访问字典
        print("get dict key is key2 - value : \(dict["key2"] ?? "默认值")")
        
        print("get dict all keys of array is: \(dict.keys)")
        print("get dict all values of array is: \(dict.values)")
        
        // 遍历数组
        for (k, v) in dict {
            print("key: \(k), value: \(v)")
        }
        
        for (index, dct) in dict.enumerated() {
            print("index: \(index), dict: \(dct)")
        }
        
        // 字典判空
        print(dict.isEmpty)
        
    }
}

