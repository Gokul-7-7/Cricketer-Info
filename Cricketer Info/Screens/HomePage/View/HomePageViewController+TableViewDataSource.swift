import UIKit

extension HomePageViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.teamResponse?.teams[selectedTeamId ?? 0].players.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? PlayerInformationTableViewCell else {
            return UITableViewCell()
        }
        if let playerData = getPlayerDataForCurrentIndexPath(indexPath) {
            cell.playerData = playerData
        }
        cell.selectionStyle = .none
        return cell
    }
}
