import UIKit

class ViewController: UIViewController {

    private lazy var sample: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(sample)
        self.view.backgroundColor = .systemPink

        NSLayoutConstraint.activate([
            sample.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            sample.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])

        sample.text = "Hello, World!"
    }
}

