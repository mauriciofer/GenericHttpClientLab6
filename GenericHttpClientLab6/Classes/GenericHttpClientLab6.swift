//
//  GenericHttpClientLab6.swift
//  GenericHttpClientLab6
//
//  Created by Mauricio Fernandez Mora on 20/6/21.
//

import Foundation

class GenericHttpClientLab6: NetworkGeneric {
    var baseURL: String
    var session: URLSession
    
    init(session: URLSession, baseURL: String) {
        self.session = session
        self.baseURL = baseURL
    }
    
    func get<T: Decodable>(type:T.Type, path: String, complete: @escaping (Result<T, ApiError>) -> Void) {
        let url = URL(string: "\(baseURL)\(path)")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        
        self.fetch(type: T.self, with: request, completion: complete)
    }
    
    func post<T: Decodable>(type: T.Type, path: String, body: [String: Any], contentType: String, complete: @escaping (Result<T, ApiError>) -> Void) {
        let path = path
        let url = URL(string: "\(baseURL)\(path)")
        
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        
        if contentType == "json" {
            let data = try! JSONSerialization.data(withJSONObject: body, options: .prettyPrinted)
            request.setValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
            request.httpBody = data
        } else if contentType == "formUrlEncoded" {
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpBody = body.toData()
        }
        
        self.fetch(type: T.self, with: request, completion: complete)
    }
    
    func put<T: Decodable>(type: T.Type, path: String, body: [String: Any], contentType: String, complete: @escaping (Result<T, ApiError>) -> Void) {
        let path = path
        let url = URL(string: "\(baseURL)\(path)")
        
        var request = URLRequest(url: url!)
        request.httpMethod = "PUT"
        
        if contentType == "json" {
            let data = try! JSONSerialization.data(withJSONObject: body, options: .prettyPrinted)
            request.setValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
            request.httpBody = data
        } else if contentType == "formUrlEncoded" {
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.httpBody = body.toData()
        }
        
        self.fetch(type: T.self, with: request, completion: complete)
    }
    
    func delete<T: Decodable>(type:T.Type, path: String, complete: @escaping (Result<T, ApiError>) -> Void) {
        let url = URL(string: "\(baseURL)\(path)")
        var request = URLRequest(url: url!)
        request.httpMethod = "DELETE"
        
        self.fetch(type: T.self, with: request, completion: complete)
    }

}
