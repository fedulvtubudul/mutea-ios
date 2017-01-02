import Foundation


public struct Scale {

	public let degrees: [Degree]
	public let key: PitchClass

	public init(key: PitchClass, degrees: [Degree]) {
		self.key = key
		self.degrees = degrees
	}
 
}
