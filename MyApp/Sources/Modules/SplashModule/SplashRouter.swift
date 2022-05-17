import UIKit

// sourcery: AutoMockable
protocol SplashRouterInput: AnyObject {
    func show(on window: UIWindow)
    func showHome()
}

final class SplashRouter {

    weak var view: SplashViewInput?

    private var viewController: UIViewController? {
        view as? UIViewController
    }
}

// MARK: - HomeRouterInput

extension SplashRouter: SplashRouterInput {
    func show(on window: UIWindow) {
        guard let viewController = viewController else { return }
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
    }

    func showHome() {
        guard let window = viewController?.view.window else { return }
        let module = HomeModule()
        module.router.show(on: window)
    }
}
