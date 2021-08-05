import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hello/menu/menu.dart';
import 'package:hello/presensi/presensi.dart';
import 'package:hello/map/map.dart';
import 'package:hello/history/history.dart';

class HomePage extends StatefulWidget {
  // final String title;

  // HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List _listPages = [];
  Widget _currentPage = PresensiPage();

  @override
  void initState() {
    super.initState();

    _listPages..add(PresensiPage())..add(MapPage())..add(HistoryPage());

    _currentPage = PresensiPage();
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('E-PRESENSI PROV KALSEL', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          actions: [
            //Icon(Icons.menu),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (context) => MenuPage(),
                    ),
                  );
                },
              ),
            ),
          ],
          elevation: 0,
        ),
        body: _currentPage,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.black.withOpacity(.45),
          selectedFontSize: 14,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(label: 'Presensi', icon: Icon(Icons.check_circle_outline)),
            BottomNavigationBarItem(label: 'Lokasi', icon: Icon(Icons.location_on_outlined)),
            BottomNavigationBarItem(label: 'History', icon: Icon(Icons.menu_book_outlined)),
          ],
          onTap: (selectedIndex) => _changePage(selectedIndex),
        ));
  }
}
