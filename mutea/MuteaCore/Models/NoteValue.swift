//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public struct NoteValue {
	public enum Symbol {
		case maxima
		case longa
		case breve
		case whole
		case half
		case quarter
		case eighth
		case sixteenth
		case thirtySecond
		case sixtyFourth
		case hundredTwentyEighth
		case twoHundredFiftySixth
	}

	let symbol: Symbol
	let dots: Int = 0
}

// MARK: - Short form standard values

public extension NoteValue {
	static var maxima: NoteValue {
		return NoteValue(symbol: .maxima)
	}

	static var longa: NoteValue {
		return NoteValue(symbol: .longa)
	}

	static var breve: NoteValue {
		return NoteValue(symbol: .breve)
	}

	static var whole: NoteValue {
		return NoteValue(symbol: .whole)
	}

	static var half: NoteValue {
		return NoteValue(symbol: .half)
	}

	static var quarter: NoteValue {
		return NoteValue(symbol: .quarter)
	}

	static var eighth: NoteValue {
		return NoteValue(symbol: .eighth)
	}

	static var sixteenth: NoteValue {
		return NoteValue(symbol: .sixteenth)
	}

	static var thirtySecond: NoteValue {
		return NoteValue(symbol: .thirtySecond)
	}

	static var sixtyFourth: NoteValue {
		return NoteValue(symbol: .sixtyFourth)
	}

	static var hundredTwentyEighth: NoteValue {
		return NoteValue(symbol: .hundredTwentyEighth)
	}

	static var twoHundredFiftySixth: NoteValue {
		return NoteValue(symbol: .twoHundredFiftySixth)
	}
}

// MARK: - CustomStringConvertible implementation

extension NoteValue: CustomStringConvertible {
	public var description: String {
		if dots == 0 {
			return symbol.description
		} else {
			let dotsString = String(repeating: "•", count: dots)
			return "\(symbol)_\(dotsString)"
		}
	}
}

extension NoteValue.Symbol: CustomStringConvertible {
	public var description: String {
		switch self {
			case .maxima: return "8"
			case .longa: return "4"
			case .breve: return "2"
			case .whole: return "1"
			case .half: return "1/2"
			case .quarter: return "1/4"
			case .eighth: return "1/8"
			case .sixteenth: return "1/16"
			case .thirtySecond: return "1/32"
			case .sixtyFourth: return "1/64"
			case .hundredTwentyEighth: return "1/128"
			case .twoHundredFiftySixth: return "1/256"
		}
	}
}
