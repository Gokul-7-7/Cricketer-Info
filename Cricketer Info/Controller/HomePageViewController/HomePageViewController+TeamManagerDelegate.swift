import Foundation

extension HomePageViewController: TeamDataManagerDelegate {
    func didUpdateTeamData(teamData: TeamResponse) {
        DispatchQueue.main.async {
            self.teamResponse = teamData
            self.homePageViews.teamPickerView.reloadAllComponents()
            self.homePageViews.listTableView.reloadData()
            self.homePageViews.activityIndicator.stopAnimating()
            self.homePageViews.teamPickerView.isHidden = false
            self.selectedTeamId = self.teamResponse?.teams[0].id
            self.selectedTeam = self.teamResponse?.teams[0].name
        }
    }
   /* Closures in Swift are like functions, but they can capture and store references to any constants and variables from the surrounding context. When a closure captures a reference to a variable or constant, it captures a reference to the value at the time the closure is created, not the value at the time the closure is called.

    If the closure captures a reference to a global variable or function, then it can access it without any problem. However, if the closure needs to access a property of an instance of a class, it needs to capture a reference to the instance using the self keyword. This is because the closure is executed outside the context of the instance, and without capturing a reference to it, the closure would not be able to access the instance's properties.*/
}
