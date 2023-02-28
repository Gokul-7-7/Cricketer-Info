import UIKit

extension HomePageViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamResponse?.teams[row].name
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedTeam = teamResponse?.teams[row].name
        selectedTeamId = teamResponse?.teams[row].id
        homePageViews.listTableView.reloadData()
    }
}
