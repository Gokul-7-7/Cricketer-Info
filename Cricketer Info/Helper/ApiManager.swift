import Foundation
//What is a singleton
///Can be used through class object only.
///The class can have only one object

//small singleton
///Object can be created outside the singleton class
///Also property can be used to access for example any function

//Capital Singleton
///Anything inside the single
enum DataError: Error {
    case invalidData
    case invalidResponse
    case invalidURL
    case network(Error?)
}

//Capital Singleton Design Pattern:
  
typealias Handler = (Result<TeamResponse, DataError>) -> ()

class ApiManager {
    static let shared = ApiManager()
    ///Object can be made only inside this class.
    private init() {}
    
    ///Result is a value that represents either a success or a failure
    func fetchTeamData(completion: @escaping Handler) {
        guard let url = URL(string: Constant.API.teamDataURL) else { return }
        ///URLSession:
        ///Calls network for us
        ///Networking class
        ///URLSession coordinates all the network data transfer tasks
        
        ///DataTask:
        ///The specific content from the URL will be fetched and given to us in the form of 'Data'
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data, error == nil else {
                completion(.failure(.invalidData))
                return
            }
            ///~= matches the response codes inside the range given, doesn't need for loop or conditional statements
            guard let response = response as? HTTPURLResponse, 200 ... 299 ~= response.statusCode else {
                completion(.failure(.invalidResponse))
                return
            }
            ///JSONDecoder() - Converts the Data into our model.
            ///The model has to conform to decodable protocol, this protocol helps with perfectly setting up our models with the data from API.
            do {
                let teamResponse = try JSONDecoder().decode(TeamResponse.self, from: data)
                ///.decode throws on run time, if there is any errors, catch block will take care
                completion(.success(teamResponse))
            } catch {
                completion(.failure(.network(error)))
            }
        }.resume()
        ///.resume() helps with entering the function even after exiting to call the completion. If not for .resume() the function won't be able to enter after exiting to access the completion.
    }
    
}

