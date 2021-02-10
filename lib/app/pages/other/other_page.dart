import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  final String text;

  const OtherPage({Key key, this.text}) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text('Texto digitado: ${widget.text}'),
        ),
      ),
    );
  }
}
