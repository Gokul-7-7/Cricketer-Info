import UIKit

extension HomePageViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let teamResponse = teamResponse, let selectedTeamId = selectedTeamId else {
            return
        }
        let playerData = teamResponse.teams[selectedTeamId].players[indexPath.row]
        let coordinator = MainCoordinator(navigationController: navigationController ?? UINavigationController())
        coordinator.showPlayerDetail(playerData: playerData)
    }
}
