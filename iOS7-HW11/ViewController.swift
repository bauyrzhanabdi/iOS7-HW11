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
    
    private lazy var loginButton: UIButton = createButton(
        title: "Login",
        backgroundColor: .systemOrange,
        titleColor: .white,
        cornerRadius: 25
    )
    
    private lazy var forgotButton: UIButton = createButton(
        title: "Forgot your password?",
        backgroundColor: .clear,
        titleColor: .white,
        fontSize: 11
    )
    
    private lazy var facebookButton: UIButton = createButton(
        title: "Facebook",
        backgroundColor: .systemOrange,
        titleColor: .white,
        cornerRadius: 15,
        fontSize: 11
    )
    
    private lazy var twitterButton: UIButton = createButton(
        title: "Twitter",
        backgroundColor: .systemOrange,
        titleColor: .white,
        cornerRadius: 15,
        fontSize: 11
    )
    
    private lazy var platformStack: UIStackView = createStack(
        distribution: .fillEqually,
        spacing: 20,
        backgroundColor: .clear
    )
    
    private lazy var signUpButton: UIButton = createButton(
        title: "Sign up",
        backgroundColor: .clear,
        titleColor: .white,
        fontSize: 11
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
        view.addSubview(loginButton)
        view.addSubview(forgotButton)
        view.addSubview(platformStack)
        view.addSubview(signUpButton)
        
        platformStack.addArrangedSubview(facebookButton)
        platformStack.addArrangedSubview(twitterButton)
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
            passwordField.heightAnchor.constraint(equalTo: usernameField.heightAnchor),
            
            loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 50),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalTo: passwordField.widthAnchor),
            loginButton.heightAnchor.constraint(equalTo: passwordField.heightAnchor),
            
            forgotButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            forgotButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            platformStack.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 50),
            platformStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            platformStack.widthAnchor.constraint(equalToConstant: 300),
            platformStack.heightAnchor.constraint(equalToConstant: 30),
            
            signUpButton.topAnchor.constraint(equalTo: platformStack.bottomAnchor, constant: 50),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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
    
    private func createButton(title: String, backgroundColor: UIColor, titleColor: UIColor, cornerRadius: CGFloat = 0, fontSize: CGFloat = 17, shadowColor: CGColor = UIColor.black.cgColor, shadowOpacity: Float = 0.3, shadowOffset: CGSize = .zero, shadowRadius: CGFloat = 10) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = backgroundColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        button.layer.cornerRadius = cornerRadius
        button.layer.shadowColor = shadowColor
        button.layer.shadowOpacity = shadowOpacity
        button.layer.shadowOffset = shadowOffset
        button.layer.shadowRadius = shadowRadius
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    private func createStack(distribution: UIStackView.Distribution, spacing: CGFloat, backgroundColor: UIColor) -> UIStackView {
        let stack = UIStackView()
        stack.distribution = distribution
        stack.spacing = spacing
        stack.backgroundColor = backgroundColor
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }
    
}


