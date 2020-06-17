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

// MARK: -스택 전체를 읽기 위한 Custom String description
extension Stack: CustomStringConvertible {

    public var description: String {
        let top = "---top---\n"
        let bottom = "\n--------"
        
        let stackElements = storage.map { "\($0)" }.reversed().joined(separator: "\n")
        return top + stackElements + bottom
    }
}
