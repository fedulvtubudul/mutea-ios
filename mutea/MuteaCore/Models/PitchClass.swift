//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public struct PitchClass {
	public let natural: NaturalPitchClass
	public let accidental: Accidental

	public init(natural: NaturalPitchClass, accidental: Accidental = .natural) {
		self.natural = natural
		self.accidental = accidental
	}
}

// MARK: - Short form standard values

public extension PitchClass {
	static var cFlat: PitchClass {
		return PitchClass(natural: .c, accidental: .flat)
	}

	static var c: PitchClass {
		return PitchClass(natural: .c)
	}

	static var cSharp: PitchClass {
		return PitchClass(natural: .c, accidental: .sharp)
	}

	static var dFlat: PitchClass {
		return PitchClass(natural: .d, accidental: .flat)
	}

	static var d: PitchClass {
		return PitchClass(natural: .d)
	}

	static var dSharp: PitchClass {
		return PitchClass(natural: .d, accidental: .sharp)
	}

	static var eFlat: PitchClass {
		return PitchClass(natural: .e, accidental: .flat)
	}

	static var e: PitchClass {
		return PitchClass(natural: .e)
	}

	static var eSharp: PitchClass {
		return PitchClass(natural: .e, accidental: .sharp)
	}

	static var fFlat: PitchClass {
		return PitchClass(natural: .f, accidental: .flat)
	}

	static var f: PitchClass {
		return PitchClass(natural: .f)
	}

	static var fSharp: PitchClass {
		return PitchClass(natural: .f, accidental: .sharp)
	}

	static var gFlat: PitchClass {
		return PitchClass(natural: .g, accidental: .flat)
	}

	static var g: PitchClass {
		return PitchClass(natural: .g)
	}

	static var gSharp: PitchClass {
		return PitchClass(natural: .g, accidental: .sharp)
	}

	static var aFlat: PitchClass {
		return PitchClass(natural: .a, accidental: .flat)
	}

	static var a: PitchClass {
		return PitchClass(natural: .a)
	}

	static var aSharp: PitchClass {
		return PitchClass(natural: .a, accidental: .sharp)
	}

	static var bFlat: PitchClass {
		return PitchClass(natural: .b, accidental: .flat)
	}

	static var b: PitchClass {
		return PitchClass(natural: .b)
	}

	static var bSharp: PitchClass {
		return PitchClass(natural: .b, accidental: .sharp)
	}
}

// MARK: - Comparable implementation

extension PitchClass: Comparable {
	public static func < (lhs: PitchClass, rhs: PitchClass) -> Bool {
		return lhs.value < rhs.value
	}
}

// MARK: - PitchClassRepresentable implementation

extension PitchClass: PitchClassRepresentable {
	public var value: PitchClassValue {
		return natural.pitchClass.shifted(by: accidental.semitones)
	}
}

// MARK: - CustomStringConvertible implementation

extension PitchClass: CustomStringConvertible {
	public var description: String {
		if accidental == .natural {
			return "\(natural)"
		} else {
			return "\(natural)\(accidental)"
		}
	}
}
