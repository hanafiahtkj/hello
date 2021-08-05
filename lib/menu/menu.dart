import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hello/presensi/presensi.dart';
import 'package:hello/map/map.dart';
import 'package:hello/history/history.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Akun Saya', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          ListTile(
            leading: Container(
              // margin: EdgeInsets.all(100.0),
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(' ', style: TextStyle(color: Colors.white, fontSize: 14)),
              ),
            ),
            //minLeadingWidth: 50.0,
            title: Text('Admin'),
            subtitle: Text(
              'Jabatan di BKD',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Text('Pengaturan Akun', style: TextStyle(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: Text('List item 1'),
            //isThreeLine: true,
            subtitle: Text('Secondary text Tertiary text'),
            leading: Icon(Icons.label),
          ),
          ListTile(
            title: Text('List item 1'),
            //isThreeLine: true,
            subtitle: Text('Secondary text Tertiary text'),
            leading: Icon(Icons.label),
          ),
          ListTile(
            title: Text('List item 1'),
            //isThreeLine: true,
            subtitle: Text('Secondary text Tertiary text'),
            leading: Icon(Icons.label),
          ),
          ListTile(
            title: Text('Keluar Akun'),
            //isThreeLine: true,
            //subtitle: Text('Secondary text Tertiary text'),
            leading: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
