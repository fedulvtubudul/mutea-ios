import Foundation


public struct ScaleDrill : CustomDebugStringConvertible {
	
	public let scale: Scale
	public let range: PitchRange
	
	
	public init(scale: Scale, range: PitchRange) {
		self.scale = scale
		self.range = range
	}
	
	public func notes () -> [Note] {
		var notes : [Note] = []
		
		for octave in self.range.octaves {
			for pitchClass in self.scale.sortedPitchClasses() {
				let pitch = Pitch(pitchClass:pitchClass, octave:octave)
				if (self.range.includesPitch(pitch)) {
					let note = Note(pitch:pitch, value:.quarter)
					notes.append(note)
				}
			}
		}
		
		return notes
	}
	
	public var debugDescription: String {
		return "\(self.scale) in range \(self.range): \(self.notes())"
	}
}
