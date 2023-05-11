//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by 민성홍 on 2023/05/11.
//

import Foundation

final class HomeViewModel {
    @Published var welcomeMessage: String?

    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()

        self.welcomeMessage = "Hello, \(user.firstName) \(user.lastName)"
    }
}
