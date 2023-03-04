import UIKit

extension HomePageViewController: UITableViewDelegate {
    ///Dynamic cell height can be used when the content inside the cell is of different size. With dynamic table view cell height, you can calculate the height of each cell based on the size of the content within it.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let teamResponse = viewModel.teamResponse, let selectedTeamId = selectedTeamId else {
            return
        }
        let playerData = teamResponse.teams[selectedTeamId].players[indexPath.row]
        let coordinator = MainCoordinator(navigationController: navigationController ?? UINavigationController())
        coordinator.showPlayerDetail(playerData: playerData)
    }
}
