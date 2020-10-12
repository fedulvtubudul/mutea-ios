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

	public init?(index: Int) {
		switch index {
			case -1: self = .doubleContra
			case 0: self = .subContra
			case 1: self = .contra
			case 2: self = .great
			case 3: self = .small
			case 4: self = .first
			case 5: self = .second
			case 6: self = .third
			case 7: self = .fourth
			case 8: self = .fifth
			case 9: self = .sixth
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
			case .doubleContra: return -1
			case .subContra: return 0
			case .contra: return 1
			case .great: return 2
			case .small: return 3
			case .first: return 4
			case .second: return 5
			case .third: return 6
			case .fourth: return 7
			case .fifth: return 8
			case .sixth: return 9
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
