//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public enum Octave {
	case doubleContra
	case subContra
	case contra
	case great
	case small
	case first
	case second
	case third
	case fourth
	case fifth
	case sixth
	case seventh
	case eighth

	public init?(index: Int) {
		switch index {
			case -5: self = .doubleContra
			case -4: self = .subContra
			case -3: self = .contra
			case -2: self = .great
			case -1: self = .small
			case 0: self = .first
			case 1: self = .second
			case 2: self = .third
			case 3: self = .fourth
			case 4: self = .fifth
			case 5: self = .sixth
			case 6: self = .seventh
			case 7: self = .eighth
			default: return nil
		}
	}

	public static func range(bottom: Octave, top: Octave) -> [Octave] {
		var result: [Octave] = []

		for i in bottom.index ... top.index {
			if let octave = Octave(index: i) {
				result.append(octave)
			}
		}

		return result
	}

	public var index: Int {
		switch self {
			case .doubleContra: return -5
			case .subContra: return -4
			case .contra: return -3
			case .great: return -2
			case .small: return -1
			case .first: return 0
			case .second: return 1
			case .third: return 2
			case .fourth: return 3
			case .fifth: return 4
			case .sixth: return 5
			case .seventh: return 6
			case .eighth: return 7
		}
	}
}

// MARK: - Comparable implementation

extension Octave: Comparable {
	public static func < (lhs: Octave, rhs: Octave) -> Bool {
		return lhs.index < rhs.index
	}
}

// MARK: - CustomStringConvertible implementation

extension Octave: CustomStringConvertible {
	public var description: String {
		return "o:\(index)"
	}
}
