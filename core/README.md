- [TOC]

# OOP Design

## Creational: `creates objects > instantiation.`

- [ ] Abstract Factory: grouping by themes
- [ ] Builder: separate construction and representation
- [ ] Dependency Injection:
- [ ] Factory Method: creates objects
- [ ] Lazy Initialisation:
- [ ] Multiton:
- [ ] Object Pool:
- [ ] Prototype: clones objects
- [ ] Resource acquisition is initialization
- [ ] Singleton: single instance

## Structural: `based on interfaces`

- [ ] Adapter: interface for incompatible classes
- [ ] Adapter Pipeline: multiple adapters for debugging
- [ ] Retrofit Interface: adapter as interface for multiple classes
- [ ] Aggregate: composite pattern with methods for aggregation of children
- [ ] Bridge: decouples abstraction and implementation
- [ ] Tombstone: an intermediate "lookup" object contains object reference
- [ ] Composite: composes + similar objects
- [ ] Decorator: dynamically adds/overrides method
- [ ] Delegation: additional functionality at runtime to avoid exponential sub classing
- [ ] Extensibility/Framework: hide complex code behind interface
- [ ] Façade: simple interface
- [ ] Flyweight: reduce cost of creating and manipulating similar objects
- [ ] Front Controller:
- [ ] Marker Interface: empty interface used to associate metadata with a class
- [ ] Module:
- [ ] Opaque Pointer: pointer to an undeclared/ private type
- [ ] Pipes and Filters: chain of processes (output is input of next process)
- [ ] Proxy: placeholder for another object
- [ ] Twin:

## Behavioural: `communication between objects`

- [ ] Blackboard: non deterministic framework for integration of specialised modules.
- [ ] Chain of Responsibility: delegates commands
- [ ] Command: encapsulate actions and parameters
- [ ] Externalise the stack: recursive to iterative
- [ ] Interpreter: specialised language
- [ ] Iterator: sequential access
- [ ] Mediator: loose coupling between classes
- [ ] Memento: object undo
- [ ] Null Object: as object default value
- [ ] Observer: publish/subscribe pattern
- [ ] Weak Reference: de couple observer from observable
- [ ] Protocol Stack: communication via multiple layers/ encapsulation hierarchy
- [ ] Scheduled task: task scheduled via interval or clock
- [ ] Servant:
- [ ] Single serving visitor:
- [ ] Specification: re combinable business logic via Boolean structure
- [ ] State: alter behaviour
- [ ] Strategy: selection of algorithm on the fly
- [ ] Template method: skeleton of an algorithm
- [ ] Visitor: separates algorithm from object structure

# Functional Design

- [ ] Monoid:
- [ ] Functor:
- [ ] Applicative:
- [ ] Monad:
- [ ] Comonad:
- [ ] Free Monad:
- [ ] Higher Order Function
- [ ] Currying:
- [ ] Function Composition:
- [ ] Closure:
- [ ] Generator:

# Architectural Design

## From Mud To Structure

- [ ] Domain Model
- [ ] Layers
- [ ] Model View Controller
- [ ] Presentation Abstraction Control
- [ ] Microkernel
- [ ] Reflection
- [ ] <!--Pipes and Filters-->
- [ ] Shared Repository
- [ ] <!--Blackboard-->
- [ ] Domain Object

## Concurrency Design

- [ ] Active Object:
- [ ] Actor:
- [ ] Balking:
- [ ] Barrier:
- [ ] Binding Properties:
- [ ] Coroutine:
- [ ] Compute Kernel:
- [ ] Double Checked Locking:
- [ ] Event Based Asynchronous:
- [ ] Fiber:
- [ ] Futex:
- [ ] Futures And Promises:
- [ ] Guarded Suspension:
- [ ] Immutable Object:
- [ ] Join:
- [ ] Lock:
- [ ] Messaging:
- [ ] Monitor Object:
- [ ] Nuclear Reaction:
- [ ] Proactor:
- [ ] Reactor:
- [ ] Read Write Lock:
- [ ] Scheduler:
- [ ] Software Transactional Memory
- [ ] Thread Pool:
- [ ] Thread Local Storage:
- [ ] <!--Active Object-->
- [ ] <!--Monitor Object-->
- [ ] Half Sync/half Async
- [ ] Leader/followers
- [ ] Thread Specific Storage

## Cloud Design

- [ ] Ambassador:
- [ ] Anti Corruption Layer:
- [ ] Bulkhead:
- [ ] Cache Aside:
- [ ] Circuit Breaker:
- [ ] Command Query Separation:
- [ ] Compensating Transaction:
- [ ] Competing Consumers:
- [ ] Compute Resource Consolidation:
- [ ] Event Sourcing:
- [ ] External Configuration Store:
- [ ] Federated Identity:
- [ ] Gatekeeper:
- [ ] Index Table:
- [ ] Leader Election:
- [ ] Mapreduce:
- [ ] Materialized View:
- [ ] <!--Pipes-->
- [ ] <!--Filters-->
- [ ] Priority Queue:
- [ ] Publisher Subscriber:
- [ ] Queue Based Load Leveling:
- [ ] Retry:
- [ ] Scheduler Agent Supervisor:
- [ ] Sharding:
- [ ] Sidecar:
- [ ] Strangler:
- [ ] Throttling:
- [ ] Valet Key:

## Distribution Infrastructure

- [ ] <!--Messaging-->
- [ ] Message
- [ ] Message Channel
- [ ] Point To Point Channel
- [ ] Publish Subscribe Channel
- [ ] Datatype Channel
- [ ] Invalid Message Channel
- [ ] Dead Letter Channel
- [ ] Guaranteed Delivery
- [ ] Channel Adapter
- [ ] Messaging Bridge
- [ ] Message Bus
- [ ] Message Translator
- [ ] Message Endpoint
- [ ] Messaging Gateway
- [ ] Messaging Mapper
- [ ] Transactional Client
- [ ] Polling Consumer
- [ ] Event Driven Consumer
- [ ] <!--Competing Consumers-->
- [ ] Message Dispatcher
- [ ] Selective Consumer
- [ ] Durable Subscriber
- [ ] Idempotent Receiver
- [ ] Service Activator
- [ ] Message Router
- [ ] Content Based Router
- [ ] Message Filter
- [ ] Dynamic Router
- [ ] Recipient List
- [ ] Splitter
- [ ] Aggregator
- [ ] Resequencer
- [ ] Composed Message Processor
- [ ] Scatter Gather
- [ ] Routing Slip
- [ ] Process Manager
- [ ] Message Broker
- [ ] Message Construction
- [ ] Command Message
- [ ] Document Message
- [ ] Event Message
- [ ] Request Reply
- [ ] Return Address
- [ ] Correlation Identifier
- [ ] Message Sequence
- [ ] Message Expiration
- [ ] Format Indicator
- [ ] Message Transformation
- [ ] Envelope Wrapper
- [ ] Content Enricher
- [ ] Content Filter
- [ ] Claim Check
- [ ] Normalizer
- [ ] Canonical Data Model
- [ ] System Management
- [ ] Control Bus
- [ ] Detour
- [ ] Wire Tap
- [ ] Message History
- [ ] Message Store
- [ ] Smart Proxy
- [ ] Test Message
- [ ] Channel Purger
- [ ] <!--Publisher Subscriber-->
- [ ] Broker
- [ ] Client Proxy
- [ ] Requestor
- [ ] Invoker
- [ ] Client Request Handler
- [ ] Server Request Handler

## Service access and configuration

- [ ] Wrapper Facade
- [ ] Component Configurator
- [ ] Interceptor
- [ ] Extension Interface

## Event Handling/ Demultiplexing and Dispatching

- [ ] <!--Reactor-->
- [ ] <!--Proactor-->
- [ ] Asynchronous Completion Token
- [ ] Acceptor Connector

## Interface Partitioning

- [ ] Explicit Interface
- [ ] <!--Extension Interface-->
- [ ] Introspective Interface
- [ ] Dynamic Invocation Interface
- [ ] Proxy
- [ ] Business Delegate: reduce business services and presentation tier coupling.
- [ ] Facade
- [ ] Combined Method
- [ ] Iterator
- [ ] Enumeration Method
- [ ] Batch Method

## Component Partitioning

- [ ] Encapsulated Implementation
- [ ] Whole Part
- [ ] <!--Composite-->
- [ ] Master Slave
- [ ] Half Object Plus Protocol
- [ ] Replicated Component Group

## Application Control

- [ ] Page Controller
- [ ] <!--Front Controller-->
- [ ] Application Controller
- [ ] Command Processor
- [ ] Template View
- [ ] Transform View
- [ ] Firewall Proxy
- [ ] Authorization

## Synchronization

- [ ] Scoped Locking
- [ ] Strategized Locking
- [ ] Thread Safe Interface
- [ ] <!--Double Checked Locking-->
- [ ] <!--Guarded Suspension-->
- [ ] Future
- [ ] Strategized Locking
- [ ] <!--Thread Specific Storage-->
- [ ] Copied Value
- [ ] Immutable Value

## Object Interaction

- [ ] <!--Observer-->
- [ ] Double Dispatch
- [ ] <!--Mediator-->
- [ ] <!--Command-->
- [ ] <!--Memento-->
- [ ] Context Object
- [ ] Data Transfer Object
- [ ] <!--Message-->

## Adaptation and Extension

- [ ] <!--Bridge-->
- [ ] Object Adapter
- [ ] <!--Chain of Responsibility-->
- [ ] <!--Interpreter-->
- [ ] <!--Interceptor-->
- [ ] <!--Visitor-->
- [ ] <!--Decorator-->
- [ ] Execute Around Object
- [ ] <!--Template Method-->
- [ ] <!--Strategy-->
- [ ] <!--Null Object-->
- [ ] <!--Wrapper Facade-->
- [ ] Declarative Component Configuration

## Modal Behavior

- [ ] Objects for States
- [ ] Methods for States
- [ ] Collections for States

## Resource acquisition

- [ ] Lookup
- [ ] Lazy acquisition
- [ ] Eager acquisition

## Resource lifecycle

- [ ] Caching
- [ ] Pooling
- [ ] Coordinator
- [ ] Resource Lifecycle Manager

## Resource release

- [ ] Leasing
- [ ] Evictor

## Resource management

- [ ] Container
- [ ] <!--Component Configurator-->
- [ ] Object manager
- [ ] <!--Lookup-->
- [ ] Virtual Proxy
- [ ] Lifecycle callback
- [ ] Task coordinator
- [ ] Resource pool
- [ ] Resource cache
- [ ] <!--Lazy Acquisition-->
- [ ] <!--Eager Acquisition-->
- [ ] Partial Acquisition
- [ ] Activator
- [ ] <!--Evictor-->
- [ ] <!--Leasing-->
- [ ] Automated Garbage Collection
- [ ] Counting Handle
- [ ] <!--Abstract Factory-->
- [ ] <!--Builder-->
- [ ] <!--Factory method-->
- [ ] Disposal Method

## Adaptation and execution

- [ ] <!--Bridge-->
- [ ] <!--Object Adapter-->
- [ ] <!--Chain of Responsibility-->
- [ ] <!--Interpreter-->
- [ ] <!--Interceptor-->
- [ ] <!--Visitor-->
- [ ] <!--Decorator-->
- [ ] Execute Around Object
- [ ] <!--Template Method-->
- [ ] <!--Strategy-->
- [ ] <!--Null Object-->
- [ ] <!--Wrapper Facade-->
- [ ] Declarative component configuration

## Security

### Available System

- [ ] Check Pointed System
- [ ] Standby
- [ ] Comparator Checked Fault Tolerant System
- [ ] Replicated System
- [ ] Error Detection/correction

### Protected System

- [ ] Policy
- [ ] Authenticator
- [ ] Subject descriptor
- [ ] Secure Communication
- [ ] Security Context
- [ ] Security Association
- [ ] Secure Proxy

### Domain specific

- [ ] Authentication Enforcer
- [ ] Authorization Enforcer
- [ ] Intercepting Validator
- [ ] Secure Base Action
- [ ] Secure Logger
- [ ] Secure Session Manager
- [ ] Web Agent Interceptor
- [ ] Obfuscated Transfer Object
- [ ] Audit Interceptor
- [ ] Message Inspector
- [ ] Message Interceptor Gateway
- [ ] Secure Message Router
- [ ] Single Sign On Delegator
- [ ] Assertion Builder
- [ ] Credential Synchroniser

## Database access

- [ ] Database Access Layer
- [ ] Data mapper
- [ ] Row Data Gateway
- [ ] Table Data Gateway
- [ ] Active Record

## Other

- [ ] Action Domain Responder:
- [ ] Client Server:
- [ ] Components Based Development/ Software Engineering:
- [ ] Data Access Object:
- [ ] Data Transfer Object:
- [ ] Domain Driven Design:
- [ ] Entity Control Boundary:
- [ ] Entity Component System:
- [ ] Event Driven Architecture:
- [ ] Identity Map:
- [ ] Implicit Invocation:
- [ ] Inversion Of Control:
- [ ] Model 2:
- [ ] Message Oriented Middleware:
- [ ] Microservices:
- [ ] Model View Adapter:
- [ ] Model View Presenter:
- [ ] Model View Viewmodel:
- [ ] Monolithic:
- [ ] Multitier:
- [ ] Naked Objects:
- [ ] Object Request Broker:
- [ ] Peer To Peer:
- [ ] Publish Subscribe:
- [ ] <!--Presentation Abstraction Control-->
- [ ] Representational State Transfer:
- [ ] Service Oriented Architecture:
- [ ] Service Locator:
- [ ] <!--Specification-->
- [ ] <!--Domain Model-->
- [ ] Mcrokernel
- [ ] <!--Reflection-->
- [ ] <!--Shared Repository-->
- [ ] <!--Domain Object-->

# Domain Specific Design

## Java EE

- [ ] <!--Business Delegate-->
- [ ] Composite Entity: composes interrelated persistent objects.
- [ ] Intercepting Filter: processes common services using pluggable filters.

# Other

- [ ] Lazy/Asynchronous Loading: defer initialisation until needed (not eager loading).
- [ ] Mangler: preforms multiple operations over a series of data.
- [ ] Mock object: simulated objects that mimic real objects in controlled ways.
- [ ] Type tunnel: presentation of unrelated types for manipulation.
- [ ] Method chaining/ named parameter: multiple method invocation in a single statement

# Anti Patterns (Refactoring)

## Basic

- [ ] Change Function Declaration
  - [ ] Add Parameter
  - [ ] Change Signature
  - [ ] Remove Parameter
  - [ ] Rename Function
  - [ ] Rename Method
- [ ] Combine Functions Into Class
- [ ] Combine Functions Into Transform
- [ ] Encapsulate Variable
  - [ ] Encapsulate Field
  - [ ] Self-encapsulate Field
- [ ] Extract Function
  - [ ] Extract Method
- [ ] Extract Variable
  - [ ] Introduce Explaining Variable
- [ ] Inline Function
  - [ ] Inline Method
- [ ] Inline Variable
  - [ ] Inline Temp
- [ ] Introduce Parameter Object
- [ ] Rename Variable

## Encapsulation

- [ ] <!--Combine Functions Into Class-->
- [ ] Encapsulate Collection
- [ ] Encapsulate Record
  - [ ] Replace Record With Data Class
- [ ] <!--Encapsulate Variable-->
  - [ ] Encapsulate Field
  - [ ] Self-Encapsulate Field
- [ ] Extract Class
- [ ] Hide Delegate
- [ ] Inline Class
- [ ] Remove Middle Man
- [ ] Replace Primitive With Object
  - [ ] Replace Data Value With Object
  - [ ] Replace Type Code With Class
- [ ] Replace Temp With Query
- [ ] Substitute Algorithm

## Moving-features

- [ ] Move Field
- [ ] Move Function
  - [ ] Move Method
- [ ] Move Statements Into Function
- [ ] Move Statements to Callers
- [ ] Remove Dead Code
- [ ] Replace Inline Code With Function Call
- [ ] Replace Loop With Pipeline
- [ ] Slide Statements
  - [ ] Consolidate Duplicate Conditional Fragments
- [ ] Split Loop
- [ ] Split Phase

## Organizing-data

- [ ] Change Reference to Value
- [ ] Change Value to Reference
- [ ] Rename Field
- [ ] Replace Derived Variable With Query
- [ ] Replace Magic Literal
  - [ ] Replace Magic Number With Symbolic Constant
- [ ] Split Variable
  - [ ] Remove Assignments to Parameters • Split Temp

## Simplify-conditional-logic

- [ ] Consolidate Conditional Expression
- [ ] Decompose Conditional
- [ ] Introduce Assertion
- [ ] Introduce Special Case
  - [ ] Introduce Null Object
- [ ] Replace Conditional With Polymorphism
- [ ] Replace Control Flag With Break
  - [ ] Remove Control Flag
- [ ] Replace Nested Conditional With Guard Clauses

## Refactoring-apis

- [ ] Parameterize Function
  - [ ] Parameterize Method
- [ ] Preserve Whole Object
- [ ] Remove Flag Argument
  - [ ] Replace Parameter With Explicit Methods
- [ ] Remove Setting Method
- [ ] Replace Command With Function
- [ ] Replace Constructor With Factory Function
  - [ ] Replace Constructor With Factory Method
- [ ] Replace Error Code With Exception
- [ ] Replace Exception With Precheck
  - [ ] Replace Exception With Test
- [ ] Replace Function With Command
  - [ ] Replace Method With Method Object
- [ ] Replace Parameter With Query
  - [ ] Replace Parameter With Method
- [ ] Replace Query With Parameter
- [ ] Return Modified Value
- [ ] Separate Query From Modifier

## Dealing-with-inheritance

- [ ] Collapse Hierarchy
- [ ] Extract Superclass
- [ ] Pull Up Constructor Body
- [ ] Pull Up Field
- [ ] Pull Up Method
- [ ] Push Down Field
- [ ] Push Down Method
- [ ] Remove Subclass
  - [ ] Replace Subclass With Fields
- [ ] Replace Subclass With Delegate
- [ ] Replace Superclass With Delegate
  - [ ] Replace Inheritance With Delegation
- [ ] Replace Type Code With Subclasses
  - [ ] Extract Subclass
  - [ ] Replace Type Code With State/strategy

## Collections

- [ ] <!--Split Loop-->
- [ ] <!--Replace Loop With Pipeline-->

## Delegation

- [ ] <!--Hide Delegate-->
- [ ] <!--Remove Middle Man-->
- [ ] <!--Replace Subclass With Delegate-->
- [ ] <!--Replace Superclass With Delegate-->

## Errors

- [ ] <!--Introduce Assertion-->
- [ ] <!--Replace Error Code With Exception-->
- [ ] <!--Replace Exception With Precheck-->

## Extract

- [ ] <!--Extract Class-->
- [ ] <!--Extract Function-->
- [ ] <!--Extract Superclass-->
- [ ] <!--Extract Variable-->

## Parameters

- [ ] <!--Preserve Whole Object-->
- [ ] <!--Remove Setting Method-->
- [ ] <!--Replace Parameter With Query-->
- [ ] <!--Replace Query With Parameter-->

## Fragments

- [ ] <!--Move Statements Into Function-->
- [ ] <!--Move Statements to Callers-->
- [ ] <!--Slide Statements-->

## Grouping-function

- [ ] <!--Combine Functions Into Class-->
- [ ] <!--Combine Functions Into Transform-->
- [ ] <!--Move Function-->
- [ ] <!--Replace Constructor With Factory Function-->

## Immutability

- [ ] <!--Change Value to Reference-->
- [ ] <!--Remove Setting Method-->
- [ ] <!--Return Modified Value-->
- [ ] <!--Separate Query From Modifier-->

## Inline

- [ ] <!--Inline Class-->
- [ ] <!--Inline Function-->
- [ ] <!--Inline Variable-->
- [ ] <!--Remove Middle Man-->

## Remove

- [ ] <!--Remove Dead Code-->
- [ ] <!--Remove Flag Argument-->
- [ ] <!--Remove Middle Man-->
- [ ] <!--Remove Setting Method-->
- [ ] <!--Remove Subclass-->

## Rename

- [ ] <!--Change Function Declaration-->
- [ ] <!--Rename Field-->
- [ ] <!--Rename Variable-->

## Split-phase

- [ ] <!--Combine Functions Into Transform-->
- [ ] <!--Split Phase-->

## Variables

- [ ] <!--Change Reference to Value-->
- [ ] <!--Change Value to Reference-->
- [ ] <!--Extract Variable-->
- [ ] <!--Inline Variable-->
- [ ] <!--Move Field-->
- [ ] <!--Pull Up Field-->
- [ ] <!--Push Down Field-->
- [ ] <!--Rename Field-->
- [ ] <!--Rename Variable-->
- [ ] <!--Replace Magic Literal-->
- [ ] <!--Replace Temp With Query-->
- [ ] <!--Replace Type Code With Subclasses-->
- [ ] <!--Split Variable-->
