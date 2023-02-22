import UIKit

extension UITextField {
    func setLeftIcon(_ iconName: String?) {
        guard let imageName = iconName, let image = UIImage(systemName: imageName) else { return }
        let iconView = UIImageView(frame: CGRect(x: 30, y: 5, width: 25, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 70, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ iconName: String?) {
        guard let imageName = iconName, let image = UIImage(systemName: imageName) else { return }
        let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
