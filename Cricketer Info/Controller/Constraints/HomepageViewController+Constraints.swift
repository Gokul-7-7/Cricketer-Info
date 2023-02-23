//
//  HomepageViewController+Constraints.swift
//  Cricketer Info
//
//  Created by Gokul on 17/02/23.
//

extension HomePageViewController {
    
    func setDelegateAndDataSource() {
        listTableView.dataSource = self
        listTableView.delegate = self
        teamPickerView.delegate = self
        teamPickerView.dataSource = self
    }
    
    func setupUI() {
        listTableView.register(PlayerInformationTableViewCell.self, forCellReuseIdentifier: cellId)
        title = "Team Info"
        view.backgroundColor = .white
        setupConstraints()
    }
    
    func setupConstraints() {
        setupPickerViewConstraint()
        setupTableViewConstraints()
        setupActivityIndicatorConstraints()
    }
    
    func setupActivityIndicatorConstraints() {
        view.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setupPickerViewConstraint() {
        view.addSubview(teamPickerView)
        teamPickerView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: 100, enableInsets: false)
    }
    
    func setupTableViewConstraints() {
        view.addSubview(listTableView)
        listTableView.anchor(top: teamPickerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: nil, enableInsets: false)
    }
}
