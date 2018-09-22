//
//  Authentication.swift
//  ConnectedColors
//
//  Created by ZhongZhongzhong on 2018-09-22.
//  Copyright © 2018 Example. All rights reserved.
//

import Foundation

struct Credential: Equatable {
    let username: String
    let password: String
    let id: String
}

func ==(lhs: Credential, rhs: Credential) -> Bool {
    return lhs.username == rhs.username && lhs.password == rhs.password
}

struct Authentication {
    static let allUsers: [Credential] = [
        Credential(username: "test1@gmail.com", password: "pppppppp", id: "8653b028-8365-436c-938f-85c99ff31e6e_c418b5e6-ef7a-4774-88bc-762f2e9adc53"),
        Credential(username: "test2@gmail.com", password: "pppppppp", id: "8653b028-8365-436c-938f-85c99ff31e6e_9c8b689c-daec-4fe6-836d-07d36f9dbcc9"),
        Credential(username: "test3@gmail.com", password: "pppppppp", id: "8653b028-8365-436c-938f-85c99ff31e6e_82d48a68-9d96-4815-9167-625041b6a132")
    ]
    
    func login(username: String, password: String) -> Bool {
        let loginUser = Credential(username: username, password: password, id: "")
        for user in Authentication.allUsers {
            if loginUser == user {
                return true
            }
        }
        return false
    }
}