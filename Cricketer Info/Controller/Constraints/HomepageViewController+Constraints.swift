//
//  HomepageViewController+Constraints.swift
//  Cricketer Info
//
//  Created by Gokul on 17/02/23.
//

extension HomePageViewController {
    
    func setupView() {
        listTableView.dataSource = self
        listTableView.delegate = self
        teamPickerView.delegate = self
        teamPickerView.dataSource = self
        title = "Team Info"
        view.backgroundColor = .white
        setupConstraints()
    }
    
    func setupConstraints() {
        setupPickerViewConstraint()
        setupTableView()
    }
    
    func setupPickerViewConstraint() {
        view.addSubview(teamPickerView)
        teamPickerView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: 100, enableInsets: false)
    }
    
    func setupTableView() {
        view.addSubview(listTableView)
        listTableView.anchor(top: teamPickerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: nil, enableInsets: false)
    }
}
