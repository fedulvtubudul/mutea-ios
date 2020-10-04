import Foundation


public enum Octave : Int, Comparable {

	case doubleContra = -5
	case subContra = -4
	case contra = -3
	case great = -2
	case small = -1
	case first = 0
	case second = 1
	case third = 2
	case fourth = 3
	case fifth = 4
	case sixth = 5
	case seventh = 6
	case eighth = 7
	
	public static func range(bottom: Octave, top: Octave) -> [Octave] {
		var result: [Octave] = []
		
		for i in bottom.rawValue ... top.rawValue {
			if let octave = Octave(rawValue: i) {
    			result.append(octave)
			}
		}
		
		return result
	}
	
	// MARK: Comparable
	
	public static func <(lhs: Octave, rhs: Octave) -> Bool {
		return lhs.rawValue < rhs.rawValue
	}
	
}


