import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swipe_cards/swipe_cards.dart';
import '../models/book.dart';
import '../services/book_service.dart';
import '../widgets/book_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MatchEngine _matchEngine;
  List<SwipeItem> _swipeItems = [];
  List<Book> readBooks = [];
  List<Book> skippedBooks = [];
  List<Book> allBooks = [];

  @override
  void initState() {
    super.initState();
    loadBooks();
  }

  Future<void> loadBooks() async {
    allBooks = await BookService.loadBooksFromAsset();
    _swipeItems = allBooks.map((book) {
      return SwipeItem(
        content: book,
        likeAction: () => readBooks.add(book),
        nopeAction: () => skippedBooks.add(book),
      );
    }).toList();

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📚 BookSwipe'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => SystemNavigator.pop(),
            tooltip: 'Uygulamadan Çık',
          ),
        ],
      ),
      body: allBooks.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
        children: [
          Expanded(
            flex: 9,
            child: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.80,
                width: MediaQuery.of(context).size.width * 0.90,
                child: SwipeCards(
                  matchEngine: _matchEngine,
                  itemBuilder: (context, index) {
                    final book = allBooks[index];
                    return BookCard(book: book);
                  },
                  onStackFinished: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Tüm kitaplar kaydırıldı.')),
                    );
                  },
                  upSwipeAllowed: false,
                  fillSpace: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
