import XCTest

import Quick
import Nimble


@testable import mutea


class ScaleSpec: QuickSpec {
	override func spec() {
		describe("Major scale") {
			let degrees: [Degree] = [
					.first,
					.second,
					.majorThird,
					.fourth,
					.fifth,
					.sixth,
					.majorSeventh,
				]
			
			let referenceScaleValues: [PitchClass: [PitchClass]] = [
					.c: [.c, .d, .e, .f, .g, .a, .b],
					.cSharp: [.cSharp, .dSharp, .eSharp, .fSharp, .gSharp, .aSharp, .bSharp],
					.dFlat: [.dFlat, .eFlat, .f, .gFlat, .aFlat, .bFlat, .c],
					.d: [.d, .e, .fSharp, .g, .a, .b, .cSharp],
				]

			

			for key in PitchClass.possibleKeys {
				context("In \(key)") {
					let scale = Scale.init(key: key, degrees: degrees)
					
					it("Should be possible to initialize") {
						expect(scale).notTo(beNil())
					}
				}
			}
				
			for (key, expectedValue) in referenceScaleValues {
				context("In \(key)") {
					let scale = Scale.init(key: key, degrees: degrees)
					let actualResult = scale.pitchClasses()

					it("Should consist of \(expectedValue)") {
						expect(actualResult).to(equal(expectedValue))
					}
				}
			}			
		}
	}
}


class ScaleTests: XCTestCase {
	
	let scaleDegrees: [Degree] = [
			.first,
			.second,
			.majorThird,
			.fourth,
			.fifth,
			.sixth,
			.majorSeventh,
		]
	
	func testInitInPossibleKeys() {
		for key in PitchClass.possibleKeys {
			let scale = Scale.init(key: key, degrees: scaleDegrees)
			XCTAssertNotNil(scale, "Can't create scale in possible key \(key)")
		}
	}
	
	func testPitchClassesCalculationInC() {
		self.checkScalePitches(inKey: .c,
			correctPitches: [.c, .d, .e, .f, .g, .a, .b])
	}
	
	func testPitchClassesCalculationInCSharp() {
		self.checkScalePitches(inKey: .cSharp,
			correctPitches: [.cSharp, .dSharp, .eSharp, .fSharp, .gSharp, .aSharp, .bSharp])
	}
	
	func testPitchClassesCalculationInDFlat() {
		self.checkScalePitches(inKey: .dFlat,
			correctPitches: [.dFlat, .eFlat, .f, .gFlat, .aFlat, .bFlat, .c])
	}
	
	func testPitchClassesCalculationInD() {
		self.checkScalePitches(inKey: .d,
			correctPitches: [.d, .e, .fSharp, .g, .a, .b, .cSharp])
	}

	func checkScalePitches(inKey key: PitchClass, correctPitches: [PitchClass]) {
		let scale = Scale.init(key: key, degrees: scaleDegrees)
		let pitchClasses = scale.pitchClasses()
		XCTAssertEqual(pitchClasses, correctPitches, "Wrong pitch classes \(pitchClasses) in key \(key)")
	}
}
