//
//  NetworkService.swift
//  DesignPattern
//
//  Created by 민성홍 on 2023/05/11.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()

    private var user: User?

    private init() {}

    func login(email: String, password: String, completionHandler: @escaping (Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            if email == "test@test.com" && password == "password" {

                self?.user = User(
                    firstName: "Sunghong",
                    lastName: "Min",
                    email: email,
                    age: 29
                )

                completionHandler(true)
            } else {
                self?.user = nil
                completionHandler(false)
            }
        }
    }

    func getLoggedInUser() -> User {
        return user!
    }
}
