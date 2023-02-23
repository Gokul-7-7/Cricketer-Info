//
//  HomepageViewController+Constraints.swift
//  Cricketer Info
//
//  Created by Gokul on 17/02/23.
//

extension HomePageViewController {
    
    func setDelegateAndDataSource() {
        homePageViews.listTableView.dataSource = self
        homePageViews.listTableView.delegate = self
        homePageViews.teamPickerView.delegate = self
        homePageViews.teamPickerView.dataSource = self
    }
    
    func setupUI() {
        homePageViews.listTableView.register(PlayerInformationTableViewCell.self, forCellReuseIdentifier: cellId)
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
        view.addSubview(homePageViews.activityIndicator)
        homePageViews.activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        homePageViews.activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        homePageViews.activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setupPickerViewConstraint() {
        view.addSubview(homePageViews.teamPickerView)
        homePageViews.teamPickerView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: 100, enableInsets: false)
    }
    
    func setupTableViewConstraints() {
        view.addSubview(homePageViews.listTableView)
        homePageViews.listTableView.anchor(top: homePageViews.teamPickerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: nil, enableInsets: false)
    }
}
