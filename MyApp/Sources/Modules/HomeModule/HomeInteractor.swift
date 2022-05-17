import Foundation

// sourcery: AutoMockable
protocol HomeInteractorInput: AnyObject {}

// sourcery: AutoMockable
protocol HomeInteractorOutput: AnyObject {}

final class HomeInteractor {
    weak var output: HomeInteractorOutput?

    init() {}
}

// MARK: - HomeInteractorInput

extension HomeInteractor: HomeInteractorInput {}
