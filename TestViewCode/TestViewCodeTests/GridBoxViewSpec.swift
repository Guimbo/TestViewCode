//
//  GridBoxViewSpec.swift
//  TestViewCodeTests
//
//  Created by Guilherme Araujo on 17/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//
import Quick
import Nimble
import Nimble_Snapshots

@testable import TestViewCode

class GridBoxViewSpec: QuickSpec {
    override func spec() {
        describe("The UI"){
            it("Needs be like i want"){
                let frame = CGRect(x: 0, y: 0, width: 250, height: 300)
                let view = GridBoxView(frame: frame)
                expect(view) == snapshot("GridBoxView")
            }
        }
    }
}
	
