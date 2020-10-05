//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public struct Note: CustomDebugStringConvertible {

	let pitch: Pitch
	let value: NoteValue

	init(pitch: Pitch, value: NoteValue) {
		self.pitch = pitch
		self.value = value
	}

	public var debugDescription: String {
		return "\(self.value) \(self.pitch)"
	}
}
