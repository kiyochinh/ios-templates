import UIKit

// sourcery: AutoMockable
protocol SplashViewInput: AnyObject {
    func configure()
}

// sourcery: AutoMockable
protocol SplashViewOutput: AnyObject {
    func viewDidLoad()
}

final class SplashViewController: ViewController {

    var output: SplashViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
    }
}

// MARK: - SplashViewInput

extension SplashViewController: SplashViewInput {
    func configure() {}
}
