import Foundation


public enum PitchClassAbsoluteValue : Int {

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
	
	
	public static func value(withRoot root: PitchClassAbsoluteValue, interval: Int) -> PitchClassAbsoluteValue? {
		let newRawValue = (root.rawValue + interval) % 12
		return PitchClassAbsoluteValue(rawValue: newRawValue)
	}
	
}


public enum PitchClassRelativeValue : Int {

	case c = 0
	case d = 1
	case e = 2
	case f = 3
	case g = 4
	case a = 5
	case b = 6
	
	
	public static func value(withRoot root: PitchClassRelativeValue, interval: Int) -> PitchClassRelativeValue? {
		let newRawValue = (root.rawValue + interval) % 7
		return PitchClassRelativeValue(rawValue: newRawValue)
	}
	
}
