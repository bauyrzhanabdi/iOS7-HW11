import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var loginLabel: UILabel = createLabel(
        text: "Login",
        allignment: .center,
        color: .white,
        fontSize: 25,
        fontWeight: 1
    )
    
    private lazy var usernameField: UITextField = createField(
        placeholder: "Username",
        backgroundColor: .white,
        textColor: .systemGray,
        cornerRadius: 25,
        leftIcon: "person",
        rightIcon: "checkmark.circle.fill"
    )
    
    private lazy var passwordField: UITextField = createField(
        placeholder: "Password",
        backgroundColor: .white,
        textColor: .systemGray,
        cornerRadius: 25,
        leftIcon: "lock"
    )
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(loginLabel)
        view.addSubview(usernameField)
        view.addSubview(passwordField)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            usernameField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 50),
            usernameField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usernameField.widthAnchor.constraint(equalToConstant: 250),
            usernameField.heightAnchor.constraint(equalToConstant: 45),
            
            passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 30),
            passwordField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordField.widthAnchor.constraint(equalTo: usernameField.widthAnchor),
            passwordField.heightAnchor.constraint(equalTo: usernameField.heightAnchor)
            
        ])
    }
    
    // MARK: - Methods
    
    private func createLabel(text: String, allignment: NSTextAlignment, color: UIColor, fontSize: CGFloat, fontWeight: CGFloat) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textAlignment = allignment
        label.textColor = color
        label.font = UIFont.systemFont(ofSize: fontSize, weight: UIFont.Weight(fontWeight))
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func createField(placeholder: String, backgroundColor: UIColor, textColor: UIColor, cornerRadius: CGFloat, leftIcon: String? = nil, rightIcon: String? = nil) -> UITextField {
        let field = UITextField()
        field.placeholder = placeholder
        field.backgroundColor = backgroundColor
        field.textColor = textColor
        field.layer.cornerRadius = cornerRadius
        field.setLeftIcon(leftIcon)
        field.setRightIcon(rightIcon)
        field.clipsToBounds = true
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }
    
    
}


