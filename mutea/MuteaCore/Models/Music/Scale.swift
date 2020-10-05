//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public struct Scale: CustomDebugStringConvertible {

	public let degrees: [Degree]
	public let key: PitchClass


	public init(key: PitchClass, degrees: [Degree]) {
		self.key = key
		self.degrees = degrees
	}

	public func pitchClasses() -> [PitchClass] {
		return self.pitchClassesWith(degrees: self.degrees)
	}

	public func sortedPitchClasses() -> [PitchClass] {
		return self.pitchClassesWith(degrees: self.degrees).sorted()
	}

	private func pitchClassesWith(degrees: [Degree]) -> [PitchClass] {
		let rootAbsoluteValue = self.key.absoluteValue
		let rootRelativeValue = self.key.relativeValue

		return degrees.map({ (degree: Degree) -> PitchClass in
				let absoluteValue = PitchClassAbsoluteValue.value(withRoot: rootAbsoluteValue, interval: degree.absoluteValue)!
				let relativeValue = PitchClassRelativeValue.value(withRoot: rootRelativeValue, interval: degree.relativeValue)!

				return PitchClass.classWithValue(absoluteValue: absoluteValue, relativeValue: relativeValue)!
			})
	}

	public var debugDescription: String {
		return "degrees: \(self.degrees) in \(self.key): \(self.pitchClasses)"
	}
}
