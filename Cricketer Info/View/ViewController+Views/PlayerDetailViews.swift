import UIKit

class PlayerDetailViews {

    lazy var playerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

        lazy var playerNameLabel: UILabel = {
            let label = UILabel()
            label.font = .preferredFont(forTextStyle: .headline)
            label.textColor = .black
            label.textAlignment = .center
            return label
        }()
        
        lazy var playerRoleLabel: UILabel = {
            let label = UILabel()
            label.font = .italicSystemFont(ofSize: 13)
            label.textColor = .gray
            label.textAlignment = .center
            return label
        }()
        
        lazy var playerDescriptionTextView: UITextView = {
            let textView = UITextView()
            textView.isUserInteractionEnabled = false
            textView.font = .systemFont(ofSize: 14)
            textView.textColor = .darkGray
            textView.textAlignment = .center
            return textView
        }()
}
