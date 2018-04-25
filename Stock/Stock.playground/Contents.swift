//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Stock"
/*
 堆疊類似只有部分功能的陣列，可以使用 push 新增元素到堆疊的最上層，使用 pop 去取得並移除最上層的元素，使用 peek 取得最上層元素但不移除
 */

public struct Stack<T>{
    fileprivate var array = [T]()
    
    public var isEmpty:Bool{
        return array.isEmpty
    }
    
    public var count:Int{
        return array.count
    }
    
    public mutating func push(_ element:T){
        array.append(element)
    }
    
    public mutating func pop() -> T?{
        return array.popLast()
    }
    
    public var top:T?{
        return array.last
    }
}


var stockarray = Stack<Any>()
stockarray.push(69)
stockarray.push("222")
stockarray.push("llk")
stockarray.count
stockarray.pop()
print(stockarray.top)

