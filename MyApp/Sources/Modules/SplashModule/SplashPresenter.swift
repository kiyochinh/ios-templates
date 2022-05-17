import UIKit

final class SplashPresenter {
    let router: SplashRouterInput
    let interactor: SplashInteractorInput

    weak var view: SplashViewInput?
    weak var output: SplashOutput?

    init(router: SplashRouterInput, interactor: SplashInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
}

// MARK: - HomeViewOutput

extension SplashPresenter: SplashViewOutput {

    func viewDidLoad() {
        view?.configure()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.router.showHome()
        }
    }
}

// MARK: - HomeInteractorOutput

extension SplashPresenter: SplashInteractorOutput {}

// MARK: - HomeInput

extension SplashPresenter: SplashInput {

    func setInitialModule(on window: UIWindow) {
        router.show(on: window)
    }
}
