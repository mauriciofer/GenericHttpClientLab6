//
//  ViewController.swift
//  GenericHttpClientLab6
//
//  Created by Mauricio Fernández Mora on 06/20/2021.
//  Copyright (c) 2021 Mauricio Fernández Mora. All rights reserved.
//

import UIKit
import GenericHttpClientLab6

class ViewController: UIViewController {
    
    var client: GenericHttpClientLab6?
    let session = URLSession.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        client = GenericHttpClientLab6(session: session, baseURL: "https://jsonplaceholder.typicode.com/")
        
//        client?.get(type: [Post].self, path: "posts/", complete: { result in
//            switch result {
//            case .success(let response):
//                print(response)
//
//            case .failure(let error):
//                print(error)
//            }
//        })
        
        //let post = Post(id: 101, userId: 1, title: "TITLE", body: "BODY")
        
        let parameters: [String: Any] = [
            "userId": 1,
            "id": 1,
            "title": "TEST",
            "body" : "test"
        ]
        
        client?.post(type: Post.self, path: "posts/", body: parameters, contentType: "json", complete: { result in
            switch result {
            case .success(let response):
                print(response)

            case .failure(let error):
                print(error)
            }
        })
        
        
//        client?.put(type: Post.self, path: "posts/1", body: body, complete: { result in
//            switch result {
//            case .success(let response):
//                print(response)
//
//            case .failure(let error):
//                print(error)
//            }
//        })
        
        
//        client?.delete(type: [Post].self, path: "posts/1", complete: { result in
//            switch result {
//            case .success(let response):
//                print(response)
//
//            case .failure(let error):
//                print(error)
//            }
//        })
    }
}

