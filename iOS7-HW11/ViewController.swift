import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    
    private lazy var label: UILabel = createLabel(
        text: "Login",
        allignment: .center,
        color: .white,
        fontSize: 25,
        fontWeight: 1
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
        view.addSubview(label)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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

}

