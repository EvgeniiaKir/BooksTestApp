//
//  ContentView.swift
//  BooksTestApp
//
//  Created by Evgeniia Kiriushina on 07.07.2022.
//

struct Book {
    var isbn: String?
    var title: String?
    var author: String?
}
struct ComicBook {
    var isbn: String?
    var author: String?
    var genre: String?
}
class Foo {
    init() { }
    func fetchBooks() -> [Book] {
        // Fetch from DB
    }
        
    func saveBooks(books: [Books]) {
        // Save on DB
    }
}
class NetworkManager {
    static let shared = NetworkManager()
    var isFetching: Bool = false
    private init() {
        // Setup ...
    }
    func getBooks() -> [Book] {
        // ...
    }
    func getComicBooks() -> [ComicBook] {
        // ...
    }
}
class FooViewController {
    var foo = Foo()
    var networkManager = NetworkManager.shared
    var data: [Book] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        data = foo.fetchBooks()
        foo.saveBooks(books: data)
        // Reload view controller, table view / collection, etc...
        // ...
    }
    // FooViewController Declaration
}
