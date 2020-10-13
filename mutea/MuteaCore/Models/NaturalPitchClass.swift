//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public enum NaturalPitchClass: Int {
	case c = 0
	case d = 1
	case e = 2
	case f = 3
	case g = 4
	case a = 5
	case b = 6

	public var pitchClass: PitchClassValue {
		switch self {
			case .c: return .c
			case .d: return .d
			case .e: return .e
			case .f: return .f
			case .g: return .g
			case .a: return .a
			case .b: return .b
		}
	}

	public func shifted(by shift: Int) -> NaturalPitchClass {
		let shiftedRawValue = (rawValue + shift) % 7
		let shiftedValue = NaturalPitchClass(rawValue: shiftedRawValue)

		// As `mod 7` is used while calculating raw value,
		// we have guaranties that NaturalPitchClass can be initialized from raw value,
		// but we want to avoid force unwraps and still have non-optional result.
		assert(shiftedValue != nil, "NaturalPitchClass failed to shift \(shift) from \(self)")
		return shiftedValue ?? self
	}
}

// MARK: - CaseIterable implementation

extension NaturalPitchClass: CaseIterable {
}

// MARK: - CustomStringConvertible implementation

extension NaturalPitchClass: CustomStringConvertible {
	public var description: String {
		switch self {
			case .c: return "C"
			case .d: return "D"
			case .e: return "E"
			case .f: return "F"
			case .g: return "G"
			case .a: return "A"
			case .b: return "B"
		}
	}
}
