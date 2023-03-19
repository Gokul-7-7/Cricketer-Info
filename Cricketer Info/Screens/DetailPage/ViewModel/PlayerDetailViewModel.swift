import Foundation

enum PlayerDetailState {
    case loaded(Player)
}

protocol PlayerDetailViewModelProtocol: AnyObject {
    typealias State = (PlayerDetailState) -> Void
    var onUpdate: State? { get set }
    
    func viewDidLoad()
}

class PlayerDetailViewModel: PlayerDetailViewModelProtocol {
    var playerData: Player
    var onUpdate: State?
    
    init(playerData: Player) {
        self.playerData = playerData
    }
    
    func viewDidLoad() {
        loadData()
    }
}

extension PlayerDetailViewModel {
    func loadData() {
        onUpdate?(.loaded(playerData))
    }
}
