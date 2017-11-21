//
//  TDDStarterSpec.swift
//  TDDStarter
//
//  Created by Farshad on 3/7/17.
//  Copyright © 2017 WolfskiN. All rights reserved.
//

import Quick
import Nimble

@testable import TDDStarter

class Spec: QuickSpec {
    override func spec() {
        describe("Starter") {
            var subject: Starter!

            beforeEach {
                subject = Starter()
            }

            context("when input is valid") {
                it("returns hello world") {
                    expect(subject.print(true)).to(equal("Hello World!"))
                }
            }

            context("when input is not valid") {
                it("returns null") {
                    expect(subject.print(false)).to(beNil())
                }
            }
        }
    }
}
