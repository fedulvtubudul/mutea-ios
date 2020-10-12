//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public enum Degree {
	case first
	case second
	case third
	case fourth
	case fifth
	case sixth
	case seventh

	var stepsFromRoot: Int {
		switch self {
			case .first: return 0
			case .second: return 1
			case .third: return 2
			case .fourth: return 3
			case .fifth: return 4
			case .sixth: return 5
			case .seventh: return 6
		}
	}
}
