//
//  FuncClass.swift
//  SwiftBase2021
//
//  Created by LHWen on 2021/4/30.
//

import Foundation

// 函数类

/*
 * Swift 定义函数使用关键字 func。
 * 定义函数的时候，可以指定一个或多个输入参数和一个返回值类型。
 * 每个函数都有一个函数名来描述它的功能。通过函数名以及对应类型的参数值来调用这个函数。函数的参数传递的顺序必须与参数列表相同。
 * 函数的实参传递的顺序必须与形参列表相同，-> 后定义函数的返回值类型。
 */

/* 语法
 * func funcname(形参) -> returntype
 * {
 *    Statement1
 *    Statement2
 *    ……
 *    Statement N
 *    return parameters
 * }
 */

func returnStringFunc(site: String) -> String {
    if site.isEmpty {
        return "参数不能为空"
    }
    return "入参为：\(site)"
}

func towParameterFunc(siteA: String, siteB: String) -> String {
    return "入参为：\(siteA), \(siteB)"
}

// 返回数组中的最大值与最小值
func returnMinAndMax(array: [Int]) -> (min: Int, max: Int) {
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for val in array[1..<array.count] {
        if val < currentMin {
            currentMin = val
        } else if val > currentMax {
            currentMax = val
        }
    }
    return (currentMin, currentMax)
}


