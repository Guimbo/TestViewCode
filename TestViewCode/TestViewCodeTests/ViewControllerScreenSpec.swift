//
//  ViewControllerScreenSpec.swift
//  TestViewCodeTests
//
//  Created by Guilherme Araujo on 17/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots
@testable import TestViewCode

class ViewControllerScreenSpec: QuickSpec {
    override func spec() {
        describe("The UI"){
            it("Needs be like i want"){
                let frame = UIScreen.main.bounds
                let view = ViewControllerScreen(frame: frame)
                expect(view) == recordSnapshot("ViewControllerScreen")
            }
        }
    }
}
