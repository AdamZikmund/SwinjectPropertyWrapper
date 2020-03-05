# SwinjectPropertyWrapper
Simple Swinject **@propertyWrapper** framework which simplifies injecting dependencies in your code.
## Installation
Add new Swift Package with repository URL https://github.com/AdamZikmund/SwinjectPropertyWrapper.git and pick version
## DependencyProviderProtocol
Simple protocol which has only one getter resolver. This property is type of **Resolver** from **Swinject** framework.
## DependencyProvider
Base implementation of **DependencyProviderProtocol** with stored container and assembly.
### Example

    class  RepositoryAssembly: Assembly {
    
        func assemble(container: Container) {
    
            container.register(Repository.self) { resolver in
    
                HTTPRepository()
    
           }
    
            container.register(Repository.self, name: "mock") { resolver in
    
                MockRepository()
    
            }
    
        }
    
    }
    
    DependencyProvider.shared.apply(assembly: RepositoryAssembly())

## Inject
Simple **@propertyWrapper** which resolves dependecies from passed provider or from default DependencyProvider.
### Example
    class MyClass {
            
        @Inject(resolver: CustomDependencyProvider.resolver)
        var repository: Repository?
                
    }


**@Inject** supports name and arguments

    class MyClass {
    
        @Inject(name: "mock", argument: "https://google.com")
        var repository: Repository?
    
    }
## ForceInject
Same as Inject **@propertyWrapper** but with force resolving, can cause runtime errors.
### Example
    class MyClass {
            
        @ForceInject(arguments: "https://google.com", "TLS")
        var repository: Repository
            
    }


**@ForceInject** also supports name and arguments

    class MyClass {
    
        @ForceInject(resolver: CustomDependencyProvider.resolver, name: "mock": arguments: "https://google.com", "TLS")
        var repository: Repository
    
    }
