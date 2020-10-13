//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public struct PitchRange {
	public let bottom: Pitch
	public let top: Pitch

	public init(bottom: Pitch, top: Pitch) {
		self.bottom = bottom
		self.top = top
	}

	public var octaves: [Octave] {
		return Octave.range(bottom: self.bottom.octave, top: self.top.octave)
	}

	public func includesPitch(_ pitch: Pitch) -> Bool {
		return pitch >= bottom && pitch <= top
	}
}
