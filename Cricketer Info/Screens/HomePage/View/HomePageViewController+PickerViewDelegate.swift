import UIKit

extension HomePageViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return viewModel.teamResponse?.teams[row].name
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedTeam = viewModel.teamResponse?.teams[row].name
        selectedTeamId = viewModel.teamResponse?.teams[row].id
        homePageViews.listTableView.reloadData()
    }
}
