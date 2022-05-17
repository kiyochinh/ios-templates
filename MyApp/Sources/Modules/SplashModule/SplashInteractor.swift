import Foundation

// sourcery: AutoMockable
protocol SplashInteractorInput: AnyObject {}

// sourcery: AutoMockable
protocol SplashInteractorOutput: AnyObject {}

final class SplashInteractor {
    weak var output: SplashInteractorOutput?

    init() {}
}

// MARK: - HomeInteractorInput

extension SplashInteractor: SplashInteractorInput {}
