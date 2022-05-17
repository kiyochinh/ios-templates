import UIKit

protocol ErrorShowable {
    func showError(message: String)
}

extension ErrorShowable where Self: UIViewController {

    func showError(message: String) {
//        let errorView = UIView()
//        errorView.setErrorMessage(message)
//        errorView.show()
    }
}
