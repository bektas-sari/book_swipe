import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/book.dart';

class BookService {
  static Future<List<Book>> loadBooksFromAsset() async {
    final data = await rootBundle.loadString('assets/books.json');
    final List<dynamic> jsonResult = json.decode(data);
    return jsonResult.map((item) => Book.fromJson(item)).toList();
  }
}
