//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public enum PitchClassValue: Int {
	case c = 0
	case cd = 1
	case d = 2
	case de = 3
	case e = 4
	case f = 5
	case fg = 6
	case g = 7
	case ga = 8
	case a = 9
	case ab = 10
	case b = 11

	public func shifted(by shift: Int) -> PitchClassValue {
		let shiftedRawValue = (rawValue + shift) % 12
		let shiftedValue = PitchClassValue(rawValue: shiftedRawValue)

		// As `mod 12` is used while calculating raw value,
		// we have guaranties that PitchClassValue can be initialized from raw value,
		// but we want to avoid force unwraps and still have non-optional result.
		assert(shiftedValue != nil, "PitchClassValue failed to shift \(shift) from \(self)")
		return shiftedValue ?? self
	}

	public func shiftFrom(_ other: PitchClassValue) -> Int {
		let absoluteValue = rawValue - other.rawValue
		if absoluteValue < -6 {
			return absoluteValue + 12
		} else if absoluteValue < 6 {
			return absoluteValue
		} else {
			return absoluteValue - 12
		}
	}
}

// MARK: - PitchClassRepresentable implementation

extension PitchClassValue: PitchClassRepresentable {
	public var value: PitchClassValue {
		return self
	}
}

// MARK: - Comparable implementation

extension PitchClassValue: Comparable {
	public static func < (lhs: PitchClassValue, rhs: PitchClassValue) -> Bool {
		return lhs.rawValue < rhs.rawValue
	}
}
