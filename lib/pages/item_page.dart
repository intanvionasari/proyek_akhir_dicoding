import 'package:flutter/material.dart';
import 'package:dicoding_flutter/models/item.dart';
import 'package:flutter/widgets.dart';

class ItemPage extends StatelessWidget {
//final Item item;//membuat final item dan variabel item

//const ItemPage({Key key, this.item}) : super(key: key);
 @override
  Widget build(BuildContext context) {
     final Item item = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail produk"),
      ),
      body: Container(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              child: Image.network(item.picture),
              width: 200,
            ),
            Card(//membuat card
                color: Colors.blueGrey,
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 300,
                  child: Text("Nama : " + item.name),
                )),
            Card(//membuat card
                color: Colors.blueGrey,
                child: Container(
                    margin: EdgeInsets.all(10),
                    width:300,
                  child: Text("Harga : " + item.price.toString()),
                )),
            Card(//membuat card
                color: Colors.blueGrey,
                child: Container(
                   margin: EdgeInsets.all(10),
                   width: 300,
                  child: Text("Jumlah   : " + item.jumlah.toString()),
                )
                ),
            OutlineButton(//tombol untuk kembali
              onPressed: () {
                Navigator.pop(context);//navigator pop untuk fungsi kembali
              },
              child: Text("Back to Home")
            ),
          ]),
        ),
      ),
    );
  }
}
