//
//  Types.swift
//  OpenGL_example
//
//  Created by Volodymyr Boichentsov on 29/12/2015.
//
//


public struct Point {
    public var x:Double = 0
    public var y:Double = 0
    
    public init() { }
    
    public init(_ x:Double, _ y:Double) {
        self.x = x
        self.y = y
    }
    
    public init(_ x:Int, _ y:Int) {
        self.x = Double(x)
        self.y = Double(y)
    }
    public init(_ x:Int32, _ y:Int32) {
        self.x = Double(x)
        self.y = Double(y)
    }
}


public struct Rect {
    public var origin = Point()
    public var size = Size()
    
    public init() { }
    
    public init(_ origin:Point, _ size:Size) {
        self.origin = origin
        self.size = size
    }
    
    public init(_ x:Double, _ y:Double, _ width:Double, _ height:Double) {
        self.origin = Point(x, y)
        self.size = Size(width, height)
    }
    
    public init(_ x:Int, _ y:Int, _ width:Int, _ height:Int) {
        self.origin = Point(Double(x), Double(y))
        self.size = Size(Double(width), Double(height))
    }
    
}
