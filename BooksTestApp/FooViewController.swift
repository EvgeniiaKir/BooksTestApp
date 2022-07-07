//
//  ContentView.swift
//  BooksTestApp
//
//  Created by Evgeniia Kiriushina on 07.07.2022.
//

import UIKit

protocol Book { // created protocol instead cause each ComicBook is Book, but not each Book is ComicBook
    var isbn: String? { get set }
    var title: String? { get set }
    var author: String? { get set }
}

struct ComicBook: Book {
    var isbn: String?
    var title: String?
    var author: String?

    var genre: String?
}

class NetworkManager {
    static let shared = NetworkManager()
    var isFetching: Bool = false
    private init() {
        // Setup ...
    }
    func fetchBooks() -> [Book] { // removed getBooks() cause method is the same like fetchBooks()
        // Fetch from DB
    }
    func saveBooks(books: [Book]) {
        // Save on DB
    }
    func getComicBooks() -> [ComicBook] { // moved this method here cause all actions with books are in this class
        // ...
    }
}

class FooViewController: UIViewController {
    var networkManager = NetworkManager.shared
    var data: [Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = networkManager.fetchBooks() // we don't need the Foo class anymore
        networkManager.saveBooks(books: data)
        // Reload view controller, table view / collection, etc...
        // ...
    }
    // FooViewController Declaration
}
