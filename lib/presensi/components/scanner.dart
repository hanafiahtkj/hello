import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/services.dart';

class ScannerButton extends StatefulWidget {
  @override
  _ScannerButtonState createState() => _ScannerButtonState();
}

class _ScannerButtonState extends State<ScannerButton> {
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes = '';
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = '-1';
    }

    if (!mounted) return;

    if (barcodeScanRes != '-1') {
      // ScaffoldMessenger.of(context)
      //   ..hideCurrentSnackBar()
      //   ..showSnackBar(
      //     const SnackBar(content: Text(barcodeScanRes)),
      //   );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: GestureDetector(
          onTap: () => scanBarcodeNormal(),
          child: Container(
            height: 125,
            color: Colors.black12,
            //decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
              Icon(Icons.photo_camera_outlined, size: 32.0),
              Text('SCAN BARCODE')
            ]),
          ),
        )),
      ],
    );
  }
}
