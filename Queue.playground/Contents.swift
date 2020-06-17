public struct Queue<T> {
    
    private var storage: [T] = []
    
    public init() {}
    
    public init(_ elements: [T]){
        storage = elements
    }
    
    public mutating func enqueue(_ element: T) -> Bool {
        storage.append(element)
        return true
    }
    
    public mutating func dequque() -> T? {
        return isEmpty ? nil : storage.removeFirst()
    }
    
    public var isEmpty: Bool {
        return storage.isEmpty
    }
    
    public var peek: T? {
        return storage.first
    }

    public var count: Int {
        return storage.count
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return storage.description
    }
}

var queue = Queue<String>()

queue.enqueue("1")
queue.enqueue("fuh")
queue.enqueue("3123f")
queue.enqueue("1tf")
queue.dequque()
queue.peek
queue
queue.description
queue.peek
