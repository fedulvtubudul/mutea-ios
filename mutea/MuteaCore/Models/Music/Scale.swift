//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public struct Scale {
	public let key: Tonic
	public let degrees: [DegreeValue]

	public func pitchClasses() -> [PitchClass] {
		return degrees.map(pitchClass(for:))
	}

	public func sortedPitchClasses() -> [PitchClass] {
		return pitchClasses().sorted()
	}
}

// MARK: - CustomStringConvertible implementation

extension Scale: CustomStringConvertible {
	public var description: String {
		return "[Degrees: \(degrees) in \(key): \(pitchClasses())]"
	}
}

// MARK: - Private methods

private extension Scale {
	// TODO: refactor to calculate just once!
	func pitchClass(for degree: DegreeValue) -> PitchClass {
		let absoluteValue = key.pitchClass.value.shifted(by: degree.intervalFromRoot)
		let natural = key.pitchClass.natural.shifted(by: degree.relative.stepsFromRoot)
		let naturalValue = natural.pitchClass.value
		let shiftFromNatural = absoluteValue.shiftFrom(naturalValue)
		let accidental = Accidental.withSemitones(shiftFromNatural)
		return PitchClass(natural: natural, accidental: accidental)
	}
}
