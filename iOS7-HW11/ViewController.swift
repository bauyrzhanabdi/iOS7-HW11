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
    
    private lazy var connectionLabel: UILabel = createLabel(
        text: "or connect with",
        allignment: .center,
        color: .white,
        fontSize: 11,
        fontWeight: 0
    )
    
    private lazy var signUpLabel: UILabel = createLabel(
        text: "Don't have account?",
        allignment: .center,
        color: .white,
        fontSize: 11,
        fontWeight: 0
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
    
    private lazy var signUpButton: UIButton = createButton(
        title: "Sign up",
        backgroundColor: .clear,
        titleColor: .systemOrange,
        fontSize: 11
    )
    
    private lazy var connectionStack: UIStackView = createStack(
        axis: .horizontal,
        distribution: .fillEqually,
        spacing: 20,
        backgroundColor: .clear
    )
    
    private lazy var authorizationStack: UIStackView = createStack(
        axis: .vertical,
        distribution: .fillEqually,
        spacing: 20,
        backgroundColor: .clear
    )
    
    private lazy var signUpView: UIView = createView(
        backgroundColor: .clear
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
        view.addSubview(authorizationStack)
        view.addSubview(loginButton)
        view.addSubview(forgotButton)
        view.addSubview(connectionLabel)
        view.addSubview(connectionStack)
        view.addSubview(signUpView)
        
        authorizationStack.addArrangedSubview(usernameField)
        authorizationStack.addArrangedSubview(passwordField)
        
        connectionStack.addArrangedSubview(facebookButton)
        connectionStack.addArrangedSubview(twitterButton)
        
        signUpView.addSubview(signUpLabel)
        signUpView.addSubview(signUpButton)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            authorizationStack.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 50),
            authorizationStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            authorizationStack.widthAnchor.constraint(equalToConstant: 250),
            authorizationStack.heightAnchor.constraint(equalToConstant: 110),
            
            loginButton.topAnchor.constraint(equalTo: authorizationStack.bottomAnchor, constant: 50),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalTo: authorizationStack.widthAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 45),
            
            forgotButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            forgotButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            connectionLabel.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 200),
            connectionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            connectionStack.topAnchor.constraint(equalTo: connectionLabel.bottomAnchor, constant: 20),
            connectionStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            connectionStack.widthAnchor.constraint(equalToConstant: 300),
            connectionStack.heightAnchor.constraint(equalToConstant: 30),
            
            signUpView.topAnchor.constraint(equalTo: connectionStack.bottomAnchor, constant: 25),
            signUpView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpView.heightAnchor.constraint(equalTo: signUpButton.heightAnchor),
            signUpView.widthAnchor.constraint(equalToConstant: 160),
            
            signUpLabel.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor),
            signUpLabel.centerYAnchor.constraint(equalTo: signUpView.centerYAnchor),
            
            signUpButton.leadingAnchor.constraint(equalTo: signUpLabel.trailingAnchor, constant: 10),
            signUpButton.centerYAnchor.constraint(equalTo: signUpView.centerYAnchor)
            
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
        field.autocapitalizationType = .none
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
    
    private func createStack(axis: NSLayoutConstraint.Axis, distribution: UIStackView.Distribution, spacing: CGFloat, backgroundColor: UIColor) -> UIStackView {
        let stack = UIStackView()
        stack.axis = axis
        stack.distribution = distribution
        stack.spacing = spacing
        stack.backgroundColor = backgroundColor
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }
    
    private func createView(backgroundColor: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
}


