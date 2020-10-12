//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public enum Accidental {
	case natural
	case flat(Int)
	case sharp(Int)

	static func withSemitones(_ semitones: Int) -> Accidental {
		if semitones == 0 {
			return .natural
		} else if semitones > 0 {
			return .sharp(semitones)
		} else {
			return .flat(-semitones)
		}
	}

	var semitones: Int {
		switch self {
			case .natural:
				return 0
			case let .flat(count):
				return -count
			case let .sharp(count):
				return count
		}
	}
}

// MARK: - Short form standard values

public extension Accidental {
	static var flat: Accidental {
		return .flat(1)
	}

	static var sharp: Accidental {
		return .sharp(1)
	}
}

// MARK: - Equatable implementation

extension Accidental: Equatable {
}

// MARK: - CustomStringConvertible implementation

extension Accidental: CustomStringConvertible {
	public var description: String {
		switch self {
			case .natural: return "♮"
			case .flat(1): return "♭"
			case .flat(2): return "𝄫"
			case let .flat(count): return String(repeating: "♭", count: count)
			case .sharp(1): return "♯"
			case .sharp(2): return "𝄪"
			case let .sharp(count): return String(repeating: "♯", count: count)
		}
	}
}
