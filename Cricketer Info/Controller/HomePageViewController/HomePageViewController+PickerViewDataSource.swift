//
//  HomePageViewController+PickerViewDataSource.swift
//  Cricketer Info
//
//  Created by Gokul on 23/02/23.
//

import UIKit

extension HomePageViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamResponse?.teams.count ?? 0
    }
}
