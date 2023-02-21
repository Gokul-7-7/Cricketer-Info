//
//  FetchTeamData.swift
//  Cricketer Info
//
//  Created by Gokul on 21/02/23.
//

import Foundation

final class TeamDataManager {
    let productURL = "https://2024d5d1-7b75-4dc5-a0bd-c28f7e3cf05d.mock.pstmn.io"
    var delegate: TeamDataManagerDelegate?

    func fetchTeamData() {
        let urlString = "\(productURL)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: request) { [weak self] (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    if let teamData = self?.parseJSON(safeData) {
                        self?.delegate?.didUpdateTeamData(teamData: teamData)
                    }
                }
            }
            task.resume()
        }
    }
    
    
    func parseJSON(_ teamResponse: Data) -> TeamResponse? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(TeamResponse.self, from: teamResponse)
            return decodedData
        } catch {
            print("Failed to parse data due to error: \(error)")
            return nil
        }
    }
}
