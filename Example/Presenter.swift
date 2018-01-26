//
//  Presenter.swift
//  Example
//
//  Created by Csipler Zoltan on 2018. 01. 26..
//  Copyright © 2018. Mito Europe Kft. All rights reserved.
//

import Foundation

class Presenter: InteractorOutputProtocol {
    var interactor: InteractorInputProtocol!

    init(interactor: InteractorInputProtocol) {
        self.interactor = interactor

        self.interactor.presenter = self
    }

    func viewDidLoad() {
        interactor.fetchData()
    }
}
