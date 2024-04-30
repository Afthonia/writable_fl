import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:writable_fl/models/book_model.dart';

class BookApi {
  static FirebaseFirestore store = FirebaseFirestore.instance;

  static Stream<List<BookModel>>? getRecentBooks() {
    try {
      final booksSnap = store.collection('books').limit(20).snapshots();
      final books = booksSnap.map((snap) =>
          snap.docs.map((doc) => BookModel.fromMap(doc.data())).toList());

      return books;
    } on FirebaseException catch (err) {
      debugPrint("Firebase Get Recent Books Error: $err");
      debugPrint("Firebase Get Recent Books Error: ${err.code}");
    } catch (err) {
      debugPrint("Get Recent Books Error: $err");
    }

    return null;
  }

  static Stream<List<BookModel>>? getAllBooks() {
    try {
      final booksSnap = store.collection('books').snapshots();

      final books = booksSnap.map((snap) =>
          snap.docs.map((doc) => BookModel.fromMap(doc.data())).toList());

          

      return books;
    } on FirebaseException catch (err) {
      debugPrint("Firebase Get All Books Error: $err");
      debugPrint("Firebase Get All Books Error: ${err.code}");
    } catch (err) {
      debugPrint("Get All Books Error: $err");
    }

    return null;
  }

  static Future<List<BookModel>?> getUserBooks(String uid) async {
    try {
      final booksSnap = await store
          .collection('books')
          .where('user_id', isEqualTo: uid)
          .get();

      final booksDoc = booksSnap.docs;

      if (booksDoc.isNotEmpty) {
        final books =
            booksDoc.map((doc) => BookModel.fromMap(doc.data())).toList();

        return books;
      }

      
    } on FirebaseException catch (err) {
      debugPrint("Firebase Get User Books Error: $err");
      debugPrint("Firebase Get User Books Error: ${err.code}");
    } catch (err) {
      debugPrint("Get User Books Error: $err");
    }

    return null;
  }

  static Future<List<BookModel>?> getReadingList(String uid) async {
    try {
      final booksSnap = await store
          .collection('books')
          .where('user_id', isEqualTo: uid)
          .get();

      final booksDoc = booksSnap.docs;

      final books =
          booksDoc.map((doc) => BookModel.fromMap(doc.data())).toList();

      return books;
    } on FirebaseException catch (err) {
      debugPrint("Firebase Get Reading List Error: $err");
      debugPrint("Firebase Get Reading List Error: ${err.code}");
    } catch (err) {
      debugPrint("Get Reading List Error: $err");
    }

    return null;
  }
}
