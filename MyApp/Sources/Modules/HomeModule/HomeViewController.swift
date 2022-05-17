import UIKit

// sourcery: AutoMockable
protocol HomeViewInput: AnyObject, ErrorShowable {
    func configure()
}

// sourcery: AutoMockable
protocol HomeViewOutput: AnyObject {
    func viewDidLoad()
}

final class HomeViewController: ViewController {

    var output: HomeViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
    }
}

// MARK: - HomeViewInput

extension HomeViewController: HomeViewInput {
    func configure() {}
}
