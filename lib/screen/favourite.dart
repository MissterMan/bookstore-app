import 'package:flutter/material.dart';

class FavouriteBooks extends StatelessWidget {
  const FavouriteBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://cdn.gramedia.com/uploads/items/Home_Sweet_Loan_cov__w150_hauto.jpg",
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
                          "Home Sweet Loan",
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'Satoshi-Black'),
                        ),
                        const Text(
                          "Almira Bastari",
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
                              "4.4",
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "(331)",
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
