//
//  DependencyProviderProtocol.swift
//  
//
//  Created by Adam Zikmund on 05/03/2020.
//

import Swinject

/// Protocol which defines resolver needed for resolving dependencies
public protocol DependencyProviderProtocol {
    
    // MARK: Properties
    
    static var resolver: Resolver { get }
    
}
