//
//  ProfileGridSpec.swift
//  TestViewCodeTests
//
//  Created by Guilherme Araujo on 19/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots
@testable import TestViewCode

class ProfileGridSpec: QuickSpec {
    override func spec() {
        describe("My UI"){
            it("If this is my ui, will be like i want, oras"){
                let frame = CGRect(x: 0, y: 0, width: 250, height: 70)
                let view  = ProfileGrid(frame: frame)
                expect(view) == recordSnapshot("ProfileGrid")
            }
            
        }
    }
}
