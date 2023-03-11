///UIKit consists of all the UI related pre-built components, UIkit also has Foundation imported which will also provide all the data types and other fundamental concepts
import UIKit

extension PlayerDetailViewController {
    
    func setupConstraints() {
        setupPlayerImageViewConstraints()
        setupPlayerNameLabelConstraints()
        setupPlayerRoleLabelConstraints()
        setupPlayerDescriptionTextViewConstraints()
    }
    
    func setupNavigationBar() {
        title = "Player Detail"
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    private func setupPlayerImageViewConstraints() {
        view.addSubview(playerViews.playerImageView)
        playerViews.playerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        playerViews.playerImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 16, paddingLeft: 50, paddingBottom: 50, paddingRight: 0, width: 150, height: 150, enableInsets: false)
    }
    
    private func setupPlayerNameLabelConstraints() {
        view.addSubview(playerViews.playerNameLabel)
        playerViews.playerNameLabel.anchor(top: playerViews.playerImageView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 16, paddingLeft: 16, paddingBottom: 0, paddingRight: 16, width: nil, height: nil, enableInsets: false)
    }
    
    private func setupPlayerRoleLabelConstraints() {
        view.addSubview(playerViews.playerRoleLabel)
        playerViews.playerRoleLabel.anchor(top: playerViews.playerNameLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 16, paddingLeft: 16, paddingBottom: 0, paddingRight: 16, width: nil, height: nil, enableInsets: false)
    }
    
    private func setupPlayerDescriptionTextViewConstraints() {
        view.addSubview(playerViews.playerDescriptionTextView)
        playerViews.playerDescriptionTextView.anchor(top: playerViews.playerRoleLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 8, paddingLeft: 16, paddingBottom: 16, paddingRight: 16, width: nil, height: nil, enableInsets: false)
    }
}
