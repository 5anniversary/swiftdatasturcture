public struct Stack<T> {

    private var storage: [T] = []
    
    public init() { }
    
    public init(_ elements: [T]){
        storage = elements
    }
    
    public mutating func push(_ element: T) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> T? {
        return storage.popLast()
    }

    public func peek() -> T? {
        return storage.last
    }
    
    // MARK: - 스택이 비어있는지
    public var isEmpty: Bool {
        return peek() == nil
    }

    // MARK: - 스택의 원소 갯수
    public var count: Int {
        return storage.count
    }
}

