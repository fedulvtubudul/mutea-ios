import UIKit


class TestVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		let cMajorScale = Scale.init(key: .c, degrees: [
				.first,
				.second,
				.majorThird,
				.fourth,
				.fifth,
				.sixth,
				.majorSeventh,
			])
		
		print(cMajorScale)
    }

}
