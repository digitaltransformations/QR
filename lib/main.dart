import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: new Container(
         
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }




  Future<String> _showDiagnosisDialog(BuildContext context) async {
    String complain = '';
    String diagnosis = '';
    return showDialog<String>(
      context: context,
      barrierDismissible: false,
      // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'إضافه تشخيص',
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: new Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          DropdownButton<String>(
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),

                              hint: Text(
                                "شيسب",
                                style: new TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                              ),
                              onChanged: (newVal) {
                               // hospitalTitle = newVal;
                                this.setState(() {});
                              }),
                          new Container(
                            padding: EdgeInsets.all(10.0),
                          ),
                          new Text(" : المستشفى ",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          DropdownButton<String>(
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),

                              hint: Text(
                                "الاسم",
                                style: new TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                              ),
                              onChanged: (newVal) {
                                //clinicTitle = newVal;
                                this.setState(() {});
                              }),
                          new Container(
                            padding: EdgeInsets.only(right: 20.0),
                          ),
                          new Text(" : العياده ",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ]),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Container(
                            padding: EdgeInsets.only(right: 20.0),
                          ),
                          new GestureDetector(
                            child: Row(
                              children: <Widget>[
                                new Text("jkkj",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87)),
                                SizedBox(
                                  width: 15.0,
                                ),
                                new Text(":",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue)),
                                SizedBox(
                                  width: 0.0,
                                ),
                                new Icon(
                                  Icons.calendar_today,
                                  color: Colors.blue,
                                ),
                                new Text(" تاريخ التحويل ",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue)),
                              ],
                            ),
                            onTap: () {

                            },
                          ),
                        ]),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 150.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      padding: EdgeInsets.all(9.0),
                      color: Color.fromRGBO(213, 223, 237, 1),
                      child: TextField(
                        //Color.fromRGBO(213, 223, 237, 1),

//                    maxLines : 7 ,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'قم بإضافه ملاحظاتك',
                        ),
                      ),
                    )),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'تأكيد',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.of(context).pop(complain);
              },
            ),
          ],
        );
      },
    );
  }


}
