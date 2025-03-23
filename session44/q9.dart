/*
 Library Management System
 Create a system to manage books in a library.
 Implement a Book class with properties like title, author, isbn, and isAvailable.
 Implement a Library class with methods:- addBook(Book book): Adds a book to the library.- borrowBook(String isbn): Marks a book as borrowed if available.- returnBook(String isbn): Marks a book as available again.- searchByTitle(String title): Returns books matching the title.
 Ensure that the system correctly updates the book's availability.
 */


void main() {
  Library library = Library();

  library.addBook(Book(title: '1984', author: 'George Orwell', isbn: '1234567890'));
  library.addBook(Book(title: 'Brave New World', author: 'Aldous Huxley', isbn: '0987654321'));
  library.addBook(Book(title: 'Fahrenheit 451', author: 'Ray Bradbury', isbn: '1122334455'));


  library.borrowBook('1234567890');
  library.borrowBook('1234567890');


  library.returnBook('1234567890');


  List<Book> searchResults = library.searchByTitle('Brave');
  print('Search results for title "Brave":');
  for (var book in searchResults) {
    print(' - ${book.title} by ${book.author} (ISBN: ${book.isbn})');
  }
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    required this.isbn,
    this.isAvailable = true,
  });
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book "${book.title}" added to the library.');
  }

  void borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        if (book.isAvailable) {
          book.isAvailable = false;
          print('You have borrowed "${book.title}".');
          return;
        } else {
          print('Sorry, "${book.title}" is currently not available.');
          return;
        }
      }
    }
    print('No book found with ISBN: $isbn');
  }

  void returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        book.isAvailable = true;
        print('You have returned "${book.title}".');
        return;
      }
    }
    print('No book found with ISBN: $isbn');
  }

  List<Book> searchByTitle(String title) {
    return books.where((book) => book.title.toLowerCase().contains(title.toLowerCase())).toList();
  }
}
