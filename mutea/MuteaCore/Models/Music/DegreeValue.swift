//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public enum DegreeValue {
	case first
	case minorSecond
	case second
	case minorThird
	case majorThird
	case fourth
	case augmentedFourth
	case diminishedFifth
	case fifth
	case augmentedFifth
	case minorSixth
	case sixth
	case augmentedSixth
	case minorSeventh
	case majorSeventh

	public var intervalFromRoot: Int {
		switch self {
			case .first: return 0
			case .minorSecond: return 1
			case .second: return 2
			case .minorThird: return 3
			case .majorThird: return 4
			case .fourth: return 5
			case .augmentedFourth, .diminishedFifth: return 6
			case .fifth: return 7
			case .augmentedFifth, .minorSixth: return 8
			case .sixth: return 9
			case .augmentedSixth, .minorSeventh: return 10
			case .majorSeventh: return 11
		}
	}

	public var relative: Degree {
		switch self {
			case .first: return .first
			case .minorSecond, .second: return .second
			case .minorThird, .majorThird: return .third
			case .fourth, .augmentedFourth: return .fourth
			case .diminishedFifth, .fifth, .augmentedFifth: return .fifth
			case .minorSixth, .sixth, .augmentedSixth: return .sixth
			case .minorSeventh, .majorSeventh: return .seventh
		}
	}
}

// MARK: - CustomStringConvertible implementation

extension DegreeValue: CustomStringConvertible {
	public var description: String {
		switch self {
			case .first: return "1"
			case .minorSecond: return "m2"
			case .second: return "2"
			case .minorThird: return "m3"
			case .majorThird: return "M3"
			case .fourth: return "4"
			case .augmentedFourth: return "+4"
			case .diminishedFifth: return "-5"
			case .fifth: return "5"
			case .augmentedFifth: return "+5"
			case .minorSixth: return "m6"
			case .sixth: return "6"
			case .augmentedSixth: return "+6"
			case .minorSeventh: return "m7"
			case .majorSeventh: return "M7"
		}
	}
}
