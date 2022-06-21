import 'package:bookstore/model/bookdata_model.dart';
import 'package:bookstore/screen/cartscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../model/bookdata_provider.dart';

class BuyBook extends StatelessWidget {
  final String bookName;
  final String bookPrice;
  final String imageUrl;
  final _jumlah = TextEditingController();

  BuyBook({
    required this.bookName,
    required this.bookPrice,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFEEEEEF),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookName,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                'Rp. ${bookPrice}',
                style: TextStyle(color: Colors.black54, fontSize: 14),
              )
            ],
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
        backgroundColor: Color(0xFFEEEEEF),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: Offset(0, 3))
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.network(
                            imageUrl,
                            height: 200,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        bookName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        bookPrice,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: _jumlah,
                        decoration: InputDecoration(
                          hintText: "Jumlah Buku",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFBF4126),
                            ),
                          ),
                          onPressed: () {
                            const uuid = Uuid();
                            Provider.of<BookProvider>(context, listen: false)
                                .add(BookModel(
                                    id: uuid.v4(),
                                    namaBuku: bookName,
                                    bookPrice: bookPrice,
                                    jumlah: int.parse(_jumlah.text)));
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return CartScreen();
                              }),
                            );
                          },
                          child: Text("Add to Cart"),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
