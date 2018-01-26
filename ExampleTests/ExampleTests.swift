//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Csipler Zoltan on 2018. 01. 26..
//  Copyright © 2018. Mito Europe Kft. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Example

class ExampleTests: XCTestCase {
    private var mockInteractor: MockInteractorInputProtocol!

    private var sut: Presenter!

    override func setUp() {
        super.setUp()

        mockInteractor = MockInteractorInputProtocol()

        sut = Presenter(interactor: mockInteractor)
        stub(mockInteractor) { stub in
            when(stub.presenter.set(sut)).thenDoNothing()
        }
    }

    override func tearDown() {
        super.tearDown()
    }

    func test_viewDidLoad() {
        stub(mockInteractor) { stub in
            when(stub.fetchData()).thenDoNothing()
        }

        sut.viewDidLoad()
    }
    
}
