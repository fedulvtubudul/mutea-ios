import Foundation


public enum PitchClass : String, CustomDebugStringConvertible {

	case bSharp = "B#"
	case c = "C"
	
	case cSharp = "C#"
	case dFlat = "Db"
	
	case d = "D"
	
	case dSharp = "D#"
	case eFlat = "Eb"
	
	case e = "E"
	case fFlat = "Fb"
	
	case eSharp = "E#"
	case f = "F"
	
	case fSharp = "F#"
	case gFlat = "Gb"
	
	case g = "G"
	
	case gSharp = "G#"
	case aFlat = "Ab"
	
	case a = "A"
	
	case aSharp = "A#"
	case bFlat = "Bb"
	
	case b = "B"
	case cFlat = "Cb"


	public var debugDescription: String {
		return self.rawValue
	}
	
	public var value : PitchClassValue {
		get {
			switch self {
				case .bSharp, .c: return .c
				case .cSharp, .dFlat: return .cd
				case .d: return .d
				case .dSharp, .eFlat: return .de
				case .e, .fFlat: return .e
				case .eSharp, .f: return .f
				case .fSharp, .gFlat: return .fg
				case .g: return .g
				case .gSharp, .aFlat: return .ga
				case .a: return .a
				case .aSharp, .bFlat: return .ab
				case .b, .cFlat: return .b
			}
		}
	}
	
}
