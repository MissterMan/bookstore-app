class DataBook {
  String namaBuku;
  String authorBook;
  String imageUrl;
  String bookPrice;

  DataBook({
    required this.namaBuku,
    required this.authorBook,
    required this.imageUrl,
    required this.bookPrice,
  });
}

var dataBook = [
  DataBook(
    namaBuku: 'Heartbreak Motel',
    authorBook: 'Ika Natassa',
    bookPrice: '99.000',
    imageUrl:
        'https://cdn.gramedia.com/uploads/items/heartbreak_motel_cov_a2uK3fK__w150_hauto.jpg',
  ),
  DataBook(
    namaBuku: 'Home Sweet Loan',
    authorBook: 'Almira Bastari',
    bookPrice: '95.000',
    imageUrl:
        'https://cdn.gramedia.com/uploads/items/Home_Sweet_Loan_cov__w150_hauto.jpg',
  ),
  DataBook(
    namaBuku: "Midnight Library",
    authorBook: "Matt Haig",
    bookPrice: '105.000',
    imageUrl:
        "https://cdn.gramedia.com/uploads/items/9786020649320_the_midnight_library_cov__w150_hauto.jpg",
  ),
  DataBook(
    namaBuku: "Sapiens Grafis vol. 2",
    authorBook: "Yuval Noah Harari",
    bookPrice: '167.000',
    imageUrl:
        "https://cdn.gramedia.com/uploads/items/9786024817558_Sapiens_Grafis_vol_2__spot_uv-1__w150_hauto.jpg",
  ),
  DataBook(
    namaBuku: "Lukacita",
    authorBook: "Valery Patkar",
    bookPrice: '125.000',
    imageUrl:
        "https://cdn.gramedia.com/uploads/items/Lukacita_Depan__w149_hauto.jpg",
  ),
  DataBook(
    namaBuku: "You Do You: Discovering Life...",
    authorBook: "Fellexandro Ruby",
    bookPrice: '128.000',
    imageUrl:
        "https://cdn.gramedia.com/uploads/items/9786020649344_YOU_DO_YOU_RUBY_C_1_4-1__w149_hauto.jpg",
  ),
  DataBook(
    namaBuku: "Keruntuhan Gondolin (The Fall of Gondolin)",
    authorBook: "J.R.R Tolkien",
    bookPrice: '155.000',
    imageUrl:
        "https://cdn.gramedia.com/uploads/items/9786020656014_The_Fall_of_Gondolin_cov__w149_hauto.jpg",
  )
];
