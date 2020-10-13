//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public enum Tonic {
	case cFlat
	case c
	case cSharp
	case dFlat
	case d
	case dSharp
	case eFlat
	case e
	case f
	case fSharp
	case gFlat
	case g
	case gSharp
	case aFlat
	case a
	case aSharp
	case bFlat
	case b

	public var pitchClass: PitchClass {
		switch self {
			case .cFlat: return .cFlat
			case .c: return .c
			case .cSharp: return .cSharp
			case .dFlat: return .dFlat
			case .d: return .d
			case .dSharp: return .dSharp
			case .eFlat: return .eFlat
			case .e: return .e
			case .f: return .f
			case .fSharp: return .fSharp
			case .gFlat: return .gFlat
			case .g: return .g
			case .gSharp: return .gSharp
			case .aFlat: return .aFlat
			case .a: return .a
			case .aSharp: return .aSharp
			case .bFlat: return .bFlat
			case .b: return .b
		}
	}
}

// MARK: - CaseIterable implementation

extension Tonic: CaseIterable {
}

// MARK: - Equatable implementation

extension Tonic: Equatable {
}
