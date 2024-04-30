import 'dart:async';

import 'package:get/get.dart';
import 'package:writable_fl/models/book_model.dart';
import 'package:writable_fl/services/book_api.dart';

class BookController extends GetxController {
  static BookController get to => Get.find();
  
  final recentBooks = Rxn<List<BookModel>>();
  final allBooks = Rxn<List<BookModel>>();

  StreamSubscription<List<BookModel>>? recentBooksHandle;
  StreamSubscription<List<BookModel>>? allBooksHandle;

  @override
  void onInit() {
    super.onInit();

    recentBooksHandle = BookApi.getRecentBooks()?.listen((booksList) {
      recentBooks.value = booksList;
    });

    allBooksHandle = BookApi.getAllBooks()?.listen((booksList) {
      allBooks.value = booksList;
    });
  }

  @override
  void onClose() {
    recentBooksHandle?.cancel();
    allBooksHandle?.cancel();

    super.onClose();
  }

  Future<List<BookModel>?> getUserBooks(String id) async {
    final books = await BookApi.getUserBooks(id);

    return books;
  }
}
