import Foundation


typealias JSONObject = [String : Any]

enum Response {
    case success(Int, JSONObject)
    case failure(Int, JSONObject)
}

let resp = Response.success(200, [
    
    "names" : [
        "Joel", "Ryan", "Phil", "Bob", "Schmidt"
    ]
    
    //    "error" : "This is an error message."
])

let resp2 = Response.failure(400, [
    "error" : "Bad stuff happened on server."
])

switch resp {
case let .success(code, data) where data["names"] as? [String] != nil:
    print("Success: \(code) + \(data["names"])")
    
case let .success(code, data) where data["error"] != nil:
    print("Successful Response but there was an error sent back from server \(data["error"])")
    
case let .success(code, data):
    print("Generic Successful response with code: \(code) and data: \(data)")
    
case let .failure(code, data) where data["error"] != nil:
    print("Failure from server with message: \(data["error"])")
    
case let .failure(code, data):
    print("generic failure response.")
    
default:
    print("Default")
}
