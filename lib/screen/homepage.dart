import 'package:bookstore/screen/cartscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/model/databook.dart';

import '../services/notification_services.dart';
import 'bookscreen.dart';
import 'loginpage.dart';

// Future<void> backgroundHandler(RemoteMessage message) async {
//   print(message.data.toString());
//   print(message.notification!.title);
// }

class HomePage extends StatefulWidget {
  final String nama;
  final String profileImage;

  HomePage({required this.nama, required this.profileImage});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseMessaging.instance.getInitialMessage().then((message) {
      final routeMessage = message?.data["route"];
      if (routeMessage != null) {
        Navigator.of(context).pushNamed(routeMessage);
        print(routeMessage);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final routeMessage = message.data["route"];
      if (routeMessage != null) {
        Navigator.of(context).pushNamed(routeMessage);
        print(routeMessage);
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        print(message.notification!.title);
        print(message.notification!.body);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEEEEEF),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome,",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              widget.nama,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return CartScreen();
                  }),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () async {
              await auth.signOut();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Signed Out"),
                ),
              );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }),
              );
            },
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("./images/profil.jpg"),
            ),
            iconSize: 40,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Popular Books",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: dataBook.length,
                  itemBuilder: (context, index) {
                    DataBook books = dataBook[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return BookScreen(book: books);
                          }),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        child: SizedBox(
                          height: 200,
                          width: 128,
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(books.imageUrl),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 157),
                                child: Container(
                                  height: 35,
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: <Color>[
                                        Colors.black12.withAlpha(1),
                                        Colors.black26,
                                        Colors.black45
                                      ],
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            maxLines: 1,
                                            text: TextSpan(
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              text: books.namaBuku,
                                            ),
                                          ),
                                          Text(
                                            books.authorBook,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Text(
                "New Books",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const NewBooks()
            ],
          ),
        ),
      ),
    );
  }
}

class NewBooks extends StatelessWidget {
  const NewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: const Offset(0, 0),
                )
              ]),
          child: GestureDetector(
            onTap: () {
              var index = 6;
              DataBook books = dataBook[index];
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BookScreen(
                    book: books,
                  );
                }),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://cdn.gramedia.com/uploads/items/9786020656014_The_Fall_of_Gondolin_cov__w149_hauto.jpg",
                      height: 150,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Keruntuhan Gondolin (The Fall of Gondolin)",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Text(
                          "J.R.R Tolkien",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
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
                                  fontFamily: 'Satoshi',
                                  color: Colors.black,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "(8.483)",
                              style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  color: Colors.black45,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Align(
                        //   alignment: Alignment.bottomRight,
                        //   child: FavButton(),
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
