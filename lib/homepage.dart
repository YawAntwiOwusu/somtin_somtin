import 'package:flutter/material.dart';
import 'package:somtin_somtin/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "Somtin Somtin",
          )),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int position) {
            Widget content = Container();
            if (position == 0) {
              content = _balanceView();
            } else {
              content = _discountView();
            }
            return _balanceView();
          }),
    );
  }

  Widget _discountView() {
    return Container(
      child: ListTile(
        title: Text("Hello"),
      ),
    );
  }

  Widget _balanceView() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total Gift Card value"),
              Text(
                "GHS 1,000",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "Buy Gift Voucher",
                style: TextStyle(color: Colors.pink),
              )
            ],
          ),
        )),
        Icon(
          Icons.image,
          size: 80,
        )
      ],
    );
  }
}
