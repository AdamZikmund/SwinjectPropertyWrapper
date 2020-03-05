//
//  DependencyProvider.swift
//  
//
//  Created by Adam Zikmund on 05/03/2020.
//

import Swinject

/// Default dependency provider protocol implementation
public class DependencyProvider: DependencyProviderProtocol {
    
    // MARK: Properties
    
    public static let shared: DependencyProvider = DependencyProvider()
    private let container: Container
    private let assembler: Assembler
    
    public static var resolver: Resolver {
        Self.shared.assembler.resolver
    }
    
    // MARK: Initialization
    
    private init() {
        self.container = Container()
        self.assembler = Assembler(container: self.container)
    }
    
    // MARK: Public
    
    public func apply(assemblies: [Assembly]) {
        assembler.apply(assemblies: assemblies)
    }
    
    public func apply(assembly: Assembly) {
        assembler.apply(assembly: assembly)
    }
    
}
