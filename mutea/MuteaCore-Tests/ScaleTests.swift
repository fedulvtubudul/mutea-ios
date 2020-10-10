import XCTest
@testable import MuteaCore


class ScaleTests: XCTestCase {
	private static let majorScaleDegrees: [Degree] = [
		.first,
		.second,
		.majorThird,
		.fourth,
		.fifth,
		.sixth,
		.majorSeventh
	]

	func testCMajorScalePitchClasses() {
		let scale = Scale(key: .c, degrees: Self.majorScaleDegrees)
		let result = scale.pitchClasses()
    

		let expectation: [PitchClass] = [.c, .d, .e, .f, .g, .a, .b]
		XCTAssertEqual(result, expectation, "C major scale must equal \(expectation)")
	}

	func testCSharpMajorScalePitchClasses() {
		let scale = Scale(key: .cSharp, degrees: Self.majorScaleDegrees)
		let result = scale.pitchClasses()
		let expectation: [PitchClass] = [.cSharp, .dSharp, .eSharp, .fSharp, .gSharp, .aSharp, .bSharp]
		XCTAssertEqual(result, expectation, "C-sharp major scale must equal \(expectation)")
	}

	func testDFlatScalePitchClasses() {
		let scale = Scale(key: .dFlat, degrees: Self.majorScaleDegrees)
		let result = scale.pitchClasses()
		let expectation: [PitchClass] = [.dFlat, .eFlat, .f, .gFlat, .aFlat, .bFlat, .c]
		XCTAssertEqual(result, expectation, "D-flat major scale must equal \(expectation)")
	}

	func testDMajorScalePitchClasses() {
		let scale = Scale(key: .d, degrees: Self.majorScaleDegrees)
		let result = scale.pitchClasses()
		let expectation: [PitchClass] = [.d, .e, .fSharp, .g, .a, .b, .cSharp]
		XCTAssertEqual(result, expectation, "C major scale must equal \(expectation)")
	}
}
