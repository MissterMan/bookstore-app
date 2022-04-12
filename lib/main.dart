import 'package:flutter/material.dart';
import 'package:bookstore/bookscreen.dart';
import 'package:bookstore/favourite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Satoshi-Regular'),
      home: HomeNavigation(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          "https://cdn.discordapp.com/attachments/788398722476277760/956882606379663392/Pink_Photo_Banner_Facebook_Cover_Photo_1.png")),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          "https://cdn.discordapp.com/attachments/788398722476277760/962703700277739610/Sale_2.png"),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const PopularBooks(),
          const NewBooks(),
        ],
      ),
    );
  }
}

class PopularBooks extends StatelessWidget {
  const PopularBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Popular Books",
            style: TextStyle(
                fontFamily: "Satoshi-Black",
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: const Offset(0, 0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://cdn.gramedia.com/uploads/items/Home_Sweet_Loan_cov__w150_hauto.jpg",
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Home Sweet Loan",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Bold', fontSize: 14)),
                          const Text("Almira Bastari",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Regular', fontSize: 12)),
                          SizedBox(
                            height: 10,
                          ),
                          FavButton()
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: const Offset(0, 0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://cdn.gramedia.com/uploads/items/9786024817558_Sapiens_Grafis_vol_2__spot_uv-1__w150_hauto.jpg",
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Sapiens Grafis vol. 2: Pilar-pilar...",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Bold', fontSize: 14)),
                          const Text("Yuval Noah Harari",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Regular', fontSize: 12)),
                          SizedBox(
                            height: 10,
                          ),
                          FavButton()
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: const Offset(0, 0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://cdn.gramedia.com/uploads/items/Lukacita_Depan__w149_hauto.jpg",
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Lukacita",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Bold', fontSize: 14)),
                          const Text("Valerie Patkar",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Regular', fontSize: 12)),
                          SizedBox(
                            height: 10,
                          ),
                          FavButton()
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: const Offset(0, 0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://cdn.gramedia.com/uploads/items/9786020649344_YOU_DO_YOU_RUBY_C_1_4-1__w149_hauto.jpg",
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("You Do You: Discovering Life...",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Bold', fontSize: 14)),
                          const Text("Fellexandro Ruby",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Regular', fontSize: 12)),
                          SizedBox(
                            height: 10,
                          ),
                          FavButton()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class NewBooks extends StatelessWidget {
  const NewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "New Books",
            style: TextStyle(
              fontFamily: "Satoshi-Black",
              fontSize: 20,
            ),
          ),
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
                      offset: const Offset(0, 0))
                ]),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const BookScreen();
                }));
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
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Keruntuhan Gondolin (The Fall of Gondolin)",
                            style: TextStyle(
                                fontSize: 18, fontFamily: 'Satoshi-Black'),
                          ),
                          const Text(
                            "J.R.R Tolkien",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          SizedBox(
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
                                    fontFamily: 'Satoshi-Medium',
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "(8.483)",
                                style: TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color: Colors.black45,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: FavButton(),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavButton extends StatefulWidget {
  const FavButton({Key? key}) : super(key: key);

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  IconData _icon = Icons.favorite_border_rounded;
  Color _color = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Icon(
            _icon = Icons.favorite,
            color: _color,
          );
        });
      },
      child: Icon(
        _icon,
        color: _color,
      ),
    );
  }
}

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _selectedIndex = 0;
  List<Widget> _selectedPage = [Homepage(), FavouriteBooks()];
  List<String> _selectedTitle = ["Homepage", "Favourite", "My Books"];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFFEEEEEF),
        title: Text(
          _selectedTitle.elementAt(_selectedIndex),
          style: TextStyle(
            fontFamily: "Satoshi-Black",
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black45),
          Container(
            child: IconButton(
              onPressed: () {},
              icon: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("./images/profil.jpg")),
              iconSize: 30,
            ),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(child: _selectedPage.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Homepage",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: "My Books",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigoAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
