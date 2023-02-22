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
        ///convert url string to URL type
        if let url = URL(string: urlString) {
            
///            A URL load request that is independent of protocol or URL scheme.
///           Declaration
///
///           struct URLRequest
///           Discussion
///
///           URLRequest encapsulates two essential properties of a load request: the URL to load and the policies used to load it. In addition, for HTTP and HTTPS requests, URLRequest includes the HTTP method (GET, POST, and so on) and the HTTP headers.
///            URLRequest only represents information about the request. Use other classes, such as URLSession, to send the request to a server. See Fetching Website Data into Memory and Uploading Data to a Website for an introduction to these techniques.
///            When writing Swift code, favor this structure over the NSURLRequest and NSMutableURLRequest classes.
///            Certain header fields are reserved; see Reserved HTTP Headers.
            var request = URLRequest(url: url)
            /// default http method is GET
            /// The primary or most-commonly-used HTTP verbs (or methods, as they are properly called) are POST, GET, PUT, PATCH, and DELETE. These correspond to create, read, update, and delete (or CRUD) operations, respectively. There are a number of other verbs, too, but are utilized less frequently.
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
