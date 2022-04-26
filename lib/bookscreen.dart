import 'package:bookstore/model/databook.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  final DataBook book;

  BookScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFEEEEEF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black45,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.namaBuku,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                book.authorBook,
                style: TextStyle(color: Colors.black54, fontSize: 14),
              )
            ],
          ),
          elevation: 0,
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 20),
          //     child: FavButton(),
          //   ),
          // ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 3))
                      ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.network(
                          book.imageUrl,
                          height: 200,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      child: Column(
                        children: [
                          const Text(
                            "Rp. 116.250",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            book.namaBuku,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            book.authorBook,
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.black,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4.1",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "(8.483)",
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: Offset(0, 0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Column(
                              children: [
                                Text(
                                  "304",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Pages",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: Offset(0, 0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Column(
                              children: [
                                Text(
                                  "8.483",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Ratings",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: Offset(0, 0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Column(
                              children: [
                                Text(
                                  "968",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Reviews",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: Offset(0, 0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Column(
                              children: [
                                Text(
                                  "English",
                                  style: TextStyle(),
                                ),
                                Text(
                                  "Language",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date Released",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "August 30th 2018",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Publisher",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Houghton Mifflin Harcourt",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "In the Tale of The Fall of Gondolin are two of the greatest powers in the world. There is Morgoth of the uttermost evil, unseen in this story but ruling over a vast military power from his fortress of Angband. Deeply opposed to Morgoth is Ulmo, second in might only to Manwë, chief of the Valar: he is called the Lord of Waters, of all seas, lakes, and rivers under the sky. But he works in secret in Middle-earth to support the Noldor, the kindred of the Elves among whom were numbered Húrin and Túrin Turambar.",
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
