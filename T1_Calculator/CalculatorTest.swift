//
//  CalculatorTest.swift
//  T1_Calculator
//
//  Created by Luis on 20/05/15.
//  Copyright (c) 2015 Luis. All rights reserved.
//

import UIKit
import XCTest

import T1_Calculator

class CalculatorTest: XCTestCase {
    
    var calc : Calculadora!
    override func setUp() {
        super.setUp()
        calc = Calculadora()
    }
    
    func testAdd(){
        calc.operator1 = 5
        calc.operator2 = 5
        calc.operation = "+"
        XCTAssertEqual(calc.makeOperation(),10,"Error")
    }
    
    func testSubstract(){
        calc.operator1 = 5
        calc.operator2 = 5
        calc.operation = "-"
        XCTAssertEqual(calc.makeOperation(),0,"Error")
    }
    
    func testMultiply(){
        calc.operator1 = 5
        calc.operator2 = 5
        calc.operation = "*"
        XCTAssertEqual(calc.makeOperation(),25,"Error")
    }
    
    func testDivide(){
        calc.operator1 = 5
        calc.operator2 = 5
        calc.operation = "/"
        XCTAssertEqual(calc.makeOperation(),1,"Error")
    }
    
    func testDivide0(){
        calc.operator1 = 5
        calc.operator2 = 0
        calc.operation = "/"
        XCTAssertEqual(calc.makeOperation(),0.0,"Error")
    }
    
}


