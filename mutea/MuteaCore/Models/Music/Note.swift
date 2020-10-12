//
// Copyright © fedulvtubudul, 2020. All rights reserved.
//

import Foundation


public struct Note {
	let pitch: Pitch
	let value: NoteValue
}

// MARK: - CustomStringConvertible implementation

extension Note: CustomStringConvertible {
	public var description: String {
		return "\(value)_\(pitch)"
	}
}
