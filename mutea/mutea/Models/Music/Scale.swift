import Foundation


public struct Scale : CustomDebugStringConvertible {

	public let degrees: [Degree]
	public let key: PitchClass

	
	public init(key: PitchClass, degrees: [Degree]) {
		self.key = key
		self.degrees = degrees
	}
	
	public var pitchClasses: [PitchClass] {
		get {
			
			let rootAbsoluteValue = self.key.absoluteValue
			let rootRelativeValue = self.key.relativeValue
			
			return self.degrees.map({ (degree: Degree) -> PitchClass in
					let absoluteValue = PitchClassAbsoluteValue.value(withRoot: rootAbsoluteValue, interval: degree.absoluteValue)!
					let relativeValue = PitchClassRelativeValue.value(withRoot: rootRelativeValue, interval: degree.relativeValue)!
				
					return PitchClass.classWithValue(absoluteValue: absoluteValue, relativeValue: relativeValue)!
				})		
		}
	}

	public var debugDescription: String {
		return "degrees: \(self.degrees) in \(self.key): \(self.pitchClasses)"
	}
	
}
