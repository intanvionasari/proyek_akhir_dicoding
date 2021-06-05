import 'package:flutter/material.dart';
import 'package:dicoding_flutter/models/item.dart';
import 'package:dicoding_flutter/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [//data data untuk mengisi list
    Item(
        name: 'Serum',
        price: 78000,
        jumlah: 5,
        picture:
            "https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/3/31/e404a3bb-a1ac-4e80-ba76-5340b4cb5d77.jpg"),
    Item(
        name: 'Lip Tint',
        price: 34000,
        jumlah: 5,
        picture:
            "https://id-test-11.slatic.net/p/38a6518758841602616353dfb0369993.jpg"),
    Item(
        name: 'Makeup Remover',
        price: 30000,
        jumlah: 3,
        picture:
            "https://d2pa5gi5n2e1an.cloudfront.net/global/images/product/beauty/Emina_Micellar_Water/Emina_Micellar_Water_L_1.jpg"),
    Item(
        name: 'Sun Screen',
        price: 40000,
        jumlah: 2,
        picture:
            "https://id-test-11.slatic.net/p/a44d6d19690cd27210c6a02fd43b9151.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,
      //theme: ThemeData(
        //primarySwatch: Colors.grey,
        //),
      //home: Scaffold(
        appBar: AppBar(
          title: Text("SkinCare Catalog"),
            ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context,'/item',arguments:item);//navigasi versi 1, untuk pengiriman data
                  //Navigator.push(//menggunakan navigator versi 2
            //context,
            //MaterialPageRoute(
              //builder: (context) => ItemPage( item : item),//mengarahkan ke Item Page sesuai dengan detail itemnya
            //));
                },
                child: Card(//membuat card kotak-kotak
                  color: Colors.white,//warna card
                  child: Container(
                    height: 150,
                    margin: EdgeInsets.all(8),
                    child: Row(//row untuk gambar dan text
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//mengatur jarak pada row yang berisi image dan text
                      children: [
                        Container(
                          child: Image.network(item.picture),
                          width: 100,
                        ),
                        Column(//coloum text nama dan klik untuk detail
                          children: [
                            Expanded(child: Text(item.name)),
                            Expanded(
                              child: Text(
                                'Klik Untuk Detail',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
//      ),
    );
  }
}
