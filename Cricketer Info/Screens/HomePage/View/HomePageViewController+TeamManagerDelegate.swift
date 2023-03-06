import Foundation

///Why capture list?
///When an object or value is getting referenced in an escaping closure it gets captured inside the scope for it to get used when the closure is executed.
///When an object get's captured (here 'self') it creates a strong reference which will make it retain and cause memory leaks and storng reference cycles or retain cycles
///Using [weak self] capture list, we capture self as a weak reference which will break our retain cycles
///While using self, we retaining it for as long as the closure is in memory.
///Using [weak self] is only required in situations where capturing self strongly would end up causing a retain cycle, for example when self is being captured within a closure that’s also ultimately retained by that same object.
///

//extension HomePageViewController: TeamDataManagerDelegate {
//    func didUpdateTeamData(teamData: TeamResponse) {
//        DispatchQueue.main.async { [weak self] in
//            guard let self = self else { return }
//            self.teamResponse = teamData
//            self.homePageViews.teamPickerView.reloadAllComponents()
//            self.homePageViews.listTableView.reloadData()
//            self.homePageViews.activityIndicator.stopAnimating()
//            self.homePageViews.teamPickerView.isHidden = false
//            self.selectedTeamId = self.teamResponse?.teams[0].id
//            self.selectedTeam = self.teamResponse?.teams[0].name
//        }
//    }
   /* Closures in Swift are like functions, but they can capture and store references to any constants and variables from the surrounding context. When a closure captures a reference to a variable or constant, it captures a reference to the value at the time the closure is created, not the value at the time the closure is called.

    If the closure captures a reference to a global variable or function, then it can access it without any problem. However, if the closure needs to access a property of an instance of a class, it needs to capture a reference to the instance using the self keyword. This is because the closure is executed outside the context of the instance, and without capturing a reference to it, the closure would not be able to access the instance's properties.*/
//}
