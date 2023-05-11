//
//  HomeViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit
import Combine

class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeLbl: UILabel!

    private let viewModel = HomeViewModel()
    private var cancellables: Set<AnyCancellable> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpBinders()
        viewModel.getLoggedInUser()
    }

    private func setUpBinders() {
        viewModel.$welcomeMessage
            .sink { [weak self] message in
                self?.welcomeLbl.text = message
            }
            .store(in: &cancellables)
    }
}
