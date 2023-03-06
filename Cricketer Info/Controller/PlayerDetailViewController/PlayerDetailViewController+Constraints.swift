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
        playerViews.playerImageView.translatesAutoresizingMaskIntoConstraints = false
        playerViews.playerImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        playerViews.playerImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        playerViews.playerImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        playerViews.playerImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    private func setupPlayerNameLabelConstraints() {
        view.addSubview(playerViews.playerNameLabel)
        playerViews.playerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        playerViews.playerNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerViews.playerNameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerViews.playerNameLabel.topAnchor.constraint(equalTo: playerViews.playerImageView.bottomAnchor, constant: 16).isActive = true
    }
    
    private func setupPlayerRoleLabelConstraints() {
        view.addSubview(playerViews.playerRoleLabel)
        playerViews.playerRoleLabel.translatesAutoresizingMaskIntoConstraints = false
        playerViews.playerRoleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerViews.playerRoleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerViews.playerRoleLabel.topAnchor.constraint(equalTo: playerViews.playerNameLabel.bottomAnchor, constant: 16).isActive = true
    }
    
    private func setupPlayerDescriptionTextViewConstraints() {
        view.addSubview(playerViews.playerDescriptionTextView)
        playerViews.playerDescriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        playerViews.playerDescriptionTextView.topAnchor.constraint(equalTo: playerViews.playerRoleLabel.bottomAnchor, constant: 8).isActive = true
        playerViews.playerDescriptionTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerViews.playerDescriptionTextView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerViews.playerDescriptionTextView.bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: 16).isActive = true
    }
}
