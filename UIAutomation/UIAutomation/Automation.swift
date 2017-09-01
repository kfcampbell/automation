//
//  Automation.swift
//  UIAutomation
//
//  Created by Keegan Campbell on 9/1/17.
//  Copyright © 2017 Keegan Campbell. All rights reserved.
//

import Foundation

class Automation {
    func mouseMoveAndClick(onPoint point: CGPoint) {
        guard let moveEvent = CGEvent(mouseEventSource: nil, mouseType: .mouseMoved, mouseCursorPosition: point, mouseButton: .left) else {
            return
        }
        guard let downEvent = CGEvent(mouseEventSource: nil, mouseType: .leftMouseDown, mouseCursorPosition: point, mouseButton: .left) else {
            return
        }
        guard let upEvent = CGEvent(mouseEventSource: nil, mouseType: .leftMouseUp, mouseCursorPosition: point, mouseButton: .left) else {
            return
        }
        moveEvent.post(tap: CGEventTapLocation.cghidEventTap)
        sleep(5)
        downEvent.post(tap: CGEventTapLocation.cghidEventTap)
        sleep(5)
        upEvent.post(tap: CGEventTapLocation.cghidEventTap)
    }
    
    func mouseMove(firstPoint: CGPoint, secondPoint: CGPoint, iterations: Int) {
        guard let firstMove = CGEvent(mouseEventSource: nil, mouseType: .mouseMoved, mouseCursorPosition: firstPoint, mouseButton: .left) else {
            return
        }
        
        guard let secondMove = CGEvent(mouseEventSource: nil, mouseType: .mouseMoved, mouseCursorPosition: secondPoint, mouseButton: .left) else {
            return
        }
        
        for _ in 0..<iterations {
            firstMove.post(tap: .cghidEventTap)
            sleep(2)
            secondMove.post(tap: .cghidEventTap)
            sleep(2)
        }
    }
}
