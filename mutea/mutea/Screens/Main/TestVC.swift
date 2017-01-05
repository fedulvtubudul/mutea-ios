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
		
		for key in PitchClass.possibleKeys {
			let scale = Scale.init(key: key, degrees: majorScaleDegrees)
			print(scale);
		}		
    }

}
