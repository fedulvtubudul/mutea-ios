//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public enum PitchClass: String, Comparable, CustomDebugStringConvertible {

	case bSharp = "B#"
	case c = "C"

	case cSharp = "C#"
	case dFlat = "Db"

	case d = "D"

	case dSharp = "D#"
	case eFlat = "Eb"

	case e = "E"
	case fFlat = "Fb"

	case eSharp = "E#"
	case f = "F"

	case fSharp = "F#"
	case gFlat = "Gb"

	case g = "G"

	case gSharp = "G#"
	case aFlat = "Ab"

	case a = "A"

	case aSharp = "A#"
	case bFlat = "Bb"

	case b = "B"
	case cFlat = "Cb"


	static let allValues = [
			cFlat, c, cSharp,
			dFlat, d, dSharp,
			eFlat, e, eSharp,
			fFlat, f, fSharp,
			gFlat, g, gSharp,
			aFlat, a, aSharp,
			bFlat, b, bSharp,
		]

	static let possibleKeys = [
			c, cSharp,
			dFlat, d,
			eFlat, e,
			f, fSharp,
			gFlat, g,
			aFlat, a,
			bFlat, b,
		]

	public var debugDescription: String {
		return self.rawValue
	}

	public var absoluteValue: PitchClassAbsoluteValue {
		switch self {
			case .bSharp, .c: return .c
			case .cSharp, .dFlat: return .cd
			case .d: return .d
			case .dSharp, .eFlat: return .de
			case .e, .fFlat: return .e
			case .eSharp, .f: return .f
			case .fSharp, .gFlat: return .fg
			case .g: return .g
			case .gSharp, .aFlat: return .ga
			case .a: return .a
			case .aSharp, .bFlat: return .ab
			case .b, .cFlat: return .b
		}
	}

	public var relativeValue: PitchClassRelativeValue {
		switch self {
			case .cFlat, .c, .cSharp: return .c
			case .dFlat, .d, .dSharp: return .d
			case .eFlat, .e, .eSharp: return .e
			case .fFlat, .f, .fSharp: return .f
			case .gFlat, .g, .gSharp: return .g
			case .aFlat, .a, .aSharp: return .a
			case .bFlat, .b, .bSharp: return .b
		}
	}

	public static func classWithValue(absoluteValue: PitchClassAbsoluteValue, relativeValue: PitchClassRelativeValue) -> PitchClass? {
		for pitchClass in PitchClass.allValues {
			let sameAbsoluteValue = pitchClass.absoluteValue == absoluteValue
			let sameRelativeValue = pitchClass.relativeValue == relativeValue
			if sameAbsoluteValue && sameRelativeValue {
				return pitchClass
			}
		}
		return nil
	}

	// MARK: Comparable

	public static func == (lhs: PitchClass, rhs: PitchClass) -> Bool {
		return lhs.absoluteValue == rhs.absoluteValue
	}

	public static func < (lhs: PitchClass, rhs: PitchClass) -> Bool {
		return lhs.absoluteValue < rhs.absoluteValue
	}
}
