import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<String> data = [];
  @override
  void initState() {
    super.initState();
    // data.add("Campus Alert");
    for (int i = 0; i < 5; i++) {
      // data.add("Campus Alert");
      data.add("Notifikasi ke- $i");
    }
  }

  final Map<String, String> _items = {
    'header': "Images/bruang.jpg",
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QUIZ Kelompok 5',
      //child: (),
      home: Scaffold(
        appBar: AppBar(
            leading: FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: Center(
          // Image.asset("images/bruang.jpg"),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(alignment: ,),
          //     Container(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                // Text('Campus Allert'),
                return Container(
                  decoration: BoxDecoration(border: Border.all()),
                  padding: const EdgeInsets.all(20),
                  //  title: const Text(""),
                  child: Text(data[index]),
                  alignment: Alignment.center,
                );
              }),
        ),
      ),
      //    ),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Nama Kelompok 5'),
            content: const Text(
                'Azzahra Alika (azzahraalika31@upi.edu) ; Elsa Nabiilah (elsanabiilah08@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
