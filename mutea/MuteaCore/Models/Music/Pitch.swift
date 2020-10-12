//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public struct Pitch {
	public let pitchClass: PitchClass
	public let octave: Octave
}

// MARK: - Comparable implementation

extension Pitch: Comparable {
	public static func == (lhs: Pitch, rhs: Pitch) -> Bool {
		let sameOctave = lhs.octave == rhs.octave
		let samePitch = lhs.pitchClass.absoluteValue == rhs.pitchClass.absoluteValue
		return sameOctave && samePitch
	}

	public static func < (lhs: Pitch, rhs: Pitch) -> Bool {
		if lhs.octave < rhs.octave {
			return true
		} else if lhs.octave > rhs.octave {
			return false
		} else {
			return lhs.pitchClass.absoluteValue < rhs.pitchClass.absoluteValue
		}
	}
}

// MARK: - CustomStringConvertible implementation

extension Pitch: CustomStringConvertible {
	public var description: String {
		return "\(pitchClass)\(octave.index)"
	}
}
