//
//  main.swift
//  UIAutomation
//
//  Created by Keegan Campbell on 9/1/17.
//  Copyright © 2017 Keegan Campbell. All rights reserved.
//

import Foundation

print("Beginning motion")

let auto = Automation()
let point = CGPoint(x: 500, y: 500)
let secondPoint = CGPoint(x: 750, y: 500)

auto.mouseMove(firstPoint: point, secondPoint: secondPoint, iterations: 3)

print("Motion done!")
