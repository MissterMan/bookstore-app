import 'package:bookstore/model/bookdata_model.dart';
import 'package:flutter/foundation.dart';

class BookProvider with ChangeNotifier {
  List<BookModel> _bookList = [];

  List<BookModel> get bookList => _bookList;

  add(BookModel book) {
    _bookList.add(book);
    notifyListeners();
  }

  remove(BookModel book) {
    _bookList = _bookList.where((element) => element.id != book.id).toList();
    notifyListeners();
  }
}
