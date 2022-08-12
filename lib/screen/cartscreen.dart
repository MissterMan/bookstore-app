import 'package:bookstore/model/bookdata_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFEEEEEF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFEEEEEF),
          title: const Text(
            'Cart',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black45,
          ),
          elevation: 0,
        ),
        body: Consumer<BookProvider>(
          builder: ((context, bookProvider, child) {
            return ListView(
                children: bookProvider.bookList.map((e) {
              return Dismissible(
                key: Key(e.id),
                background: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Hapus Buku',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                child: Container(
                  child: ListTile(
                    title: Text(e.namaBuku),
                    subtitle: Row(
                      children: [
                        Text((double.parse(e.bookPrice) * e.jumlah)
                            .toStringAsFixed(3)),
                        SizedBox(
                          width: 10,
                        ),
                        Text('${e.jumlah.toString()} x'),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.cancel_outlined),
                      onPressed: () {},
                    ),
                  ),
                ),
                onDismissed: (direction) {
                  Provider.of<BookProvider>(
                    context,
                    listen: false,
                  ).remove(e);
                },
              );
            }).toList());
          }),
        ),
      ),
    );
  }
}
