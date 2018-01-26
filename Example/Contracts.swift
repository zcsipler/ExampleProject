//
//  Contracts.swift
//  Example
//
//  Created by Csipler Zoltan on 2018. 01. 26..
//  Copyright © 2018. Mito Europe Kft. All rights reserved.
//

import Foundation

// MARK: - Presenter to Interactor

public protocol InteractorInputProtocol: class {
    weak var presenter: InteractorOutputProtocol! { get set }

    func fetchData()
}

// MARK: - Interactor to Presenter

public protocol InteractorOutputProtocol: class {
}
