import Foundation


public enum Degree : String, CustomDebugStringConvertible {

//	case perfectFirst = "1"
	case first = "1"
//	case diminishedSecond = "-2"
	
//	case augmentedFirst = "+1"
	case minorSecond = "m2"
	
//	case majorSecond = "M2"
	case second = "2"
//	case diminishedThird = "-3"
	
//	case augmentedSecond = "+2"
	case minorThird = "m3"
	
	case majorThird = "M3"
//	case diminishedFourth = "-4"
	
//	case augmentedThird = "+3"
//	case perfectFourth = "4"
	case fourth = "4"
	
	case augmentedFourth = "+4"
	case diminishedFifth = "-5"
	
//	case perfectFifth = "5"
	case fifth = "5"
//	case diminishedSixth = "-6"
	
	case augmentedFifth = "+5"
	case minorSixth = "m6"
	
//	case majorSixth = "M6"
	case sixth = "6"
//	case diminishedSeventh = "-7"

	case augmentedSixth = "+6"
	case minorSeventh = "m7"
	
	case majorSeventh = "M7"
//	case diminishedEighth = "-8"
	
//	case augmentedSeventh = "+7"
//	case perfectEighth = "8"


	public var debugDescription: String {
		return self.rawValue;
	}

}
