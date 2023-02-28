import Foundation

final class TeamDataManager {
    let productURL = "https://5b0944cf-0eb6-40f6-8a9d-e7f413002852.mock.pstmn.io"
    var delegate: TeamDataManagerDelegate?

    ///Completion handler can be used to send data
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
            let request = URLRequest(url: url)
            
            /// default http method is GET
            /// The primary or most-commonly-used HTTP verbs (or methods, as they are properly called) are POST, GET, PUT, PATCH, and DELETE. These correspond to create, read, update, and delete (or CRUD) operations, respectively. There are a number of other verbs, too, but are utilized less frequently.
           // request.httpMethod = "GET"
            
            let session = URLSession(configuration: .default)
///            The URLSession class and related classes provide an API for downloading data from and uploading data to endpoints indicated by URLs. Your app can also use this API to perform background downloads when your app isn’t running or, in iOS, while your app is suspended. You can use the related URLSessionDelegate and URLSessionTaskDelegate to support authentication and receive events like redirection and task completion.
///            Note
///            The URLSession API involves many different classes that work together in a fairly complex way which may not be obvious if you read the reference documentation by itself. Before using the API, read the overview in the URL Loading System topic. The articles in the Essentials, Uploading, and Downloading sections offer examples of performing common tasks with URLSession.
///            Your app creates one or more URLSession instances, each of which coordinates a group of related data-transfer tasks. For example, if you’re creating a web browser, your app might create one session per tab or window, or one session for interactive use and another for background downloads. Within each session, your app adds a series of tasks, each of which represents a request for a specific URL (following HTTP redirects, if necessary).
            
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
