import UIKit


class TestVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		let majorScaleDegrees: [Degree] = [
				.first,
				.second,
				.majorThird,
				.fourth,
				.fifth,
				.sixth,
				.majorSeventh,
			]
		
//		for key in PitchClass.possibleKeys {
//			let scale = Scale.init(key: key, degrees: majorScaleDegrees)
//			print(scale);
//		}

		let scale: Scale = Scale(key:.d, degrees:majorScaleDegrees)
		
		let bottom = Pitch(pitchClass:.bFlat, octave:.first)
		let top = Pitch(pitchClass:.f, octave:.third)
		let range = PitchRange(bottom:bottom, top:top)
		
		let drill = ScaleDrill(scale:scale, range:range)
		
		print(drill)
    }

}
