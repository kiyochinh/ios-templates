import UIKit

// sourcery: AutoMockable
protocol HomeRouterInput: AnyObject {
    func show(on window: UIWindow)
}

final class HomeRouter {

    weak var view: HomeViewInput?

    private var viewController: UIViewController? {
        view as? UIViewController
    }
}

// MARK: - HomeRouterInput

extension HomeRouter: HomeRouterInput {
    func show(on window: UIWindow) {
        guard let viewController = viewController else { return }
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
    }
}
