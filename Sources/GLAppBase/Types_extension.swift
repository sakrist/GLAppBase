//
//  Types.swift
//  OpenGL_example
//
//  Created by Volodymyr Boichentsov on 29/12/2015.
//
//

import SwiftMath

extension Vector2f {
    
    public init(_ x:Int32, _ y:Int32) {
        self.init(Float(x), Float(y))
    }
    
    public init(_ x:Double, _ y:Double) {
        self.init(Float(x), Float(y))
    }
}

