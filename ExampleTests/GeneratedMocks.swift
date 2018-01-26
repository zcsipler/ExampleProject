import Cuckoo

import Foundation
@testable import Example

class MockInteractorInputProtocol: InteractorInputProtocol, Cuckoo.Mock {
    typealias MocksType = InteractorInputProtocol
    typealias Stubbing = __StubbingProxy_InteractorInputProtocol
    typealias Verification = __VerificationProxy_InteractorInputProtocol
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: InteractorInputProtocol?

    func spy(on victim: InteractorInputProtocol) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "presenter", "accesibility": "public", "@type": "InstanceVariable", "type": "InteractorOutputProtocol!", "isReadOnly": false]
     var presenter: InteractorOutputProtocol! {
        get {
            return cuckoo_manager.getter("presenter", original: observed.map { o in return { () -> InteractorOutputProtocol! in o.presenter }})
        }
        
        set {
            cuckoo_manager.setter("presenter", value: newValue, original: observed != nil ? { self.observed?.presenter = $0 } : nil)
        }
        
    }
    

    

    
    // ["name": "fetchData", "returnSignature": "", "fullyQualifiedName": "fetchData()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "public", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
    public func fetchData()  {
        
            return cuckoo_manager.call("fetchData()",
                parameters: (),
                original: observed.map { o in
                    return { (args) in
                        let () = args
                         o.fetchData()
                    }
                })
        
    }
    

    struct __StubbingProxy_InteractorInputProtocol: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var presenter: Cuckoo.ToBeStubbedProperty<InteractorOutputProtocol?> {
            return .init(manager: cuckoo_manager, name: "presenter")
        }
        
        
        func fetchData() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("fetchData()", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_InteractorInputProtocol: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var presenter: Cuckoo.VerifyProperty<InteractorOutputProtocol?> {
            return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func fetchData() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("fetchData()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class InteractorInputProtocolStub: InteractorInputProtocol {
    
     var presenter: InteractorOutputProtocol! {
        get {
            return DefaultValueRegistry.defaultValue(for: (InteractorOutputProtocol!).self)
        }
        
        set { }
        
    }
    

    

    
    public func fetchData()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



class MockInteractorOutputProtocol: InteractorOutputProtocol, Cuckoo.Mock {
    typealias MocksType = InteractorOutputProtocol
    typealias Stubbing = __StubbingProxy_InteractorOutputProtocol
    typealias Verification = __VerificationProxy_InteractorOutputProtocol
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: InteractorOutputProtocol?

    func spy(on victim: InteractorOutputProtocol) -> Self {
        observed = victim
        return self
    }

    

    

    

    struct __StubbingProxy_InteractorOutputProtocol: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }


    struct __VerificationProxy_InteractorOutputProtocol: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
    }


}

 class InteractorOutputProtocolStub: InteractorOutputProtocol {
    

    

    
}



