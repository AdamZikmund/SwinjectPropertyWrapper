//
//  InjectPropertyWrapper.swift
//  
//
//  Created by Adam Zikmund on 05/03/2020.
//

import Swinject

/// Property wrapper which resolves from dependency provider wrapped value
@propertyWrapper
public class Inject<T> {
    
    // MARK: Properties
    
    public var wrappedValue: T?
    
    // MARK: Initialization
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self) {
        self.wrappedValue = provider.resolver.resolve(T.self)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         argument: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      argument: argument)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         arguments arg1: Any,
         arg2: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      arguments: arg1, arg2)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         arguments arg1: Any,
         arg2: Any,
         arg3: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      arguments: arg1, arg2, arg3)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         arguments arg1: Any,
         arg2: Any,
         arg3: Any,
         arg4: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      arguments: arg1, arg2, arg3, arg4)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         arguments arg1: Any,
         arg2: Any,
         arg3: Any,
         arg4: Any,
         arg5: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      arguments: arg1, arg2, arg3, arg4, arg5)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         arguments arg1: Any,
         arg2: Any,
         arg3: Any,
         arg4: Any,
         arg5: Any,
         arg6: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      arguments: arg1, arg2, arg3, arg4, arg5, arg6)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         arguments arg1: Any,
         arg2: Any,
         arg3: Any,
         arg4: Any,
         arg5: Any,
         arg6: Any,
         arg7: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         arguments arg1: Any,
         arg2: Any,
         arg3: Any,
         arg4: Any,
         arg5: Any,
         arg6: Any,
         arg7: Any,
         arg8: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    }
    
    public init(provider: DependencyProviderProtocol.Type = DependencyProvider.self,
         name: String?,
         arguments arg1: Any,
         arg2: Any,
         arg3: Any,
         arg4: Any,
         arg5: Any,
         arg6: Any,
         arg7: Any,
         arg8: Any,
         arg9: Any) {
        self.wrappedValue = provider.resolver.resolve(T.self,
                                                      name: name,
                                                      arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    }
    
}
