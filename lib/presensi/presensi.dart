import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'components/clock.dart';
import 'components/scanner.dart';
import 'components/camera.dart';
import 'package:intl/intl.dart';

class PresensiPage extends StatefulWidget {
  @override
  _PresensiPageState createState() => _PresensiPageState();
}

class _PresensiPageState extends State<PresensiPage> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      //your image here
      //color: Colors.blue[200],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/images/bg2.png"),
          fit: BoxFit.cover,
        ),
      ),
      //your Scaffold goes here
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          Clock(),
          Expanded(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: IconButton(
                    icon: const Icon(Icons.navigate_before),
                    color: Colors.black,
                    onPressed: () => _controller.previousPage(),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Center(
                        child: Container(
                          child: CarouselSlider(
                            carouselController: _controller,
                            options: CarouselOptions(
                              autoPlay: false,
                              viewportFraction: 1,
                              aspectRatio: 0.75,
                              enlargeCenterPage: false,
                            ),
                            items: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Wrap(
                                          children: [
                                            Container(
                                              //height: 500,
                                              padding: const EdgeInsets.all(16.0),
                                              color: Colors.white,
                                              child: Center(
                                                child: Column(
                                                  //mainAxisAlignment: MainAxisAlignment.center,
                                                  //mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Text(
                                                      'FORM PRESENSI RADIUS',
                                                      style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
                                                    ),
                                                    Text(
                                                      DateFormat('EEEE, dd LLLL yyyy').format(DateTime.now()),
                                                      style: TextStyle(color: Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: 16.0,
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Text('MASUK'),
                                                          ),
                                                          Text('WFO'),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8.0,
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Text('PULANG'),
                                                          ),
                                                          Text('BELUM'),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 16.0,
                                                    ),
                                                    CameraButton(),
                                                    SizedBox(
                                                      height: 16.0,
                                                    ),
                                                    Container(
                                                      height: 48,
                                                      width: double.infinity,
                                                      //margin: EdgeInsets.symmetric(horizontal: 16),
                                                      decoration: BoxDecoration(color: Colors.blue.shade600, borderRadius: BorderRadius.circular(4)),
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                          'SIMPAN',
                                                          style: TextStyle(color: Colors.white, fontSize: 16),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  //style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.white, elevation: 0),
                                  child: Container(width: 150, height: 150, child: Image(image: AssetImage('asset/images/logo2.png')))),
                              GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Wrap(
                                          children: [
                                            Container(
                                              //height: 500,
                                              padding: const EdgeInsets.all(16.0),
                                              color: Colors.white,
                                              child: Center(
                                                child: Column(
                                                  //mainAxisAlignment: MainAxisAlignment.center,
                                                  //mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Text(
                                                      'FORM PRESENSI BARCODE',
                                                      style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
                                                    ),
                                                    Text(
                                                      DateFormat('EEEE, dd LLLL yyyy').format(DateTime.now()),
                                                      style: TextStyle(color: Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: 16.0,
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Text('MASUK'),
                                                          ),
                                                          Text('WFO'),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8.0,
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Text('PULANG'),
                                                          ),
                                                          Text('BELUM'),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 16.0,
                                                    ),
                                                    ScannerButton(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  //style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.white, elevation: 0),
                                  child: Container(width: 150, height: 150, child: Image(image: AssetImage('asset/images/logo3.png')))),
                              GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Wrap(
                                          children: [
                                            Container(
                                              //height: 500,
                                              padding: const EdgeInsets.all(16.0),
                                              color: Colors.white,
                                              child: Center(
                                                child: Column(
                                                  //mainAxisAlignment: MainAxisAlignment.center,
                                                  //mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Text(
                                                      'FORM PRESENSI MANUAL',
                                                      style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
                                                    ),
                                                    Text(
                                                      DateFormat('EEEE, dd LLLL yyyy').format(DateTime.now()),
                                                      style: TextStyle(color: Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: 16.0,
                                                    ),
                                                    Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                            child: GestureDetector(
                                                          onTap: () {},
                                                          child: Container(
                                                            height: 125,
                                                            color: Colors.black12,
                                                            //decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
                                                            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                                                              Icon(Icons.upload_file, size: 32.0),
                                                              Text('DOKUMEN PENDUKUNG')
                                                            ]),
                                                          ),
                                                        )),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 16.0,
                                                    ),
                                                    TextFormField(
                                                      cursorColor: Theme.of(context).cursorColor,
                                                      initialValue: 'Input text',
                                                      maxLength: 20,
                                                      decoration: InputDecoration(
                                                        //icon: Icon(Icons.favorite),
                                                        labelText: 'Keterangan',
                                                        labelStyle: TextStyle(
                                                          color: Color(0xFF6200EE),
                                                        ),
                                                        enabledBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFF6200EE)),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8.0,
                                                    ),
                                                    Container(
                                                      height: 48,
                                                      width: double.infinity,
                                                      //margin: EdgeInsets.symmetric(horizontal: 16),
                                                      decoration: BoxDecoration(color: Colors.blue.shade600, borderRadius: BorderRadius.circular(4)),
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                          'SIMPAN',
                                                          style: TextStyle(color: Colors.white, fontSize: 16),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  //style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.white, elevation: 0),
                                  child: Container(width: 150, height: 150, child: Image(image: AssetImage('asset/images/logo4.png'))))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    color: Colors.black,
                    onPressed: () => _controller.nextPage(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.cyan[100],
            height: 100,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.access_alarm, size: 32.0, color: Colors.blue),
                      Text('07:15 - 08:00', textAlign: TextAlign.center, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
                      Text('Presensi Pagi', textAlign: TextAlign.center, style: TextStyle(color: Colors.black45)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.access_alarm, size: 32.0, color: Colors.yellow[800]),
                      Text('07:15 - 08:00', textAlign: TextAlign.center, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
                      Text('Presensi Pagi', textAlign: TextAlign.center, style: TextStyle(color: Colors.black45)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
