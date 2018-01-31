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

        stub(mockInteractor) { stub in
            when(stub.presenter.set(any())).thenDoNothing()
        }

        sut = Presenter(interactor: mockInteractor)
    }

    override func tearDown() {
        super.tearDown()
    }

    func test_viewDidLoad() {
        stub(mockInteractor) { stub in
            when(stub.fetchData()).thenDoNothing()
        }

        var onErrorBlockCalled = false
        let onErrorBlockBlock = {
            onErrorBlockCalled = true
        }

        stub(mockInteractor) { stub in
            when(stub.onError.get).thenReturn(onErrorBlockBlock)
        }

        sut.viewDidLoad()

        XCTAssertTrue(onErrorBlockCalled)
    }
}
