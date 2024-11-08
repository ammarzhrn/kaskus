part of '../page.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}
class _AllProductState extends State<AllProduct> {
  int selectedIndexCard = 0;
  int selectedIndexCard2 = 0;

  final List<New> news = [
    New(
        title: 'New Balance 1906R White Gold',
        price: '\$179',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzM2NTExLzRlMjNhYjhmYTIzZDQ1OTlhZmFjNWJmNTE0ZDI2NjZiLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Shoes'),
    New(
        title: 'Gentlewoman Micro Canvas Tote',
        price: '\$49',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzY0MzgzLzkxODMxYTVjNTg4YTNmODM2MGIwNmQ3MjlmMGMxNzUyLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Luxury'),
    New(
        title: 'Pop Mart Labubu the Monsters Tasty Macarons Vinyl Face Sea Salt Coconut',
        price: '\$79',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzExMTE5NS82NjgyODIxOWJjNWFkYWNmOGY3OTgzMWI3N2UwZDI2Yy5wbmciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Luxury'),
    New(
        title: 'Nike Big Swoosh Reversible Boa Jacket Black White (Asia Sizing)',
        price: '\$149',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzM1NTQ2LzMzN2EyZDQ0ZWY5Y2UxYjIxYWQyNzQ4MDM2YzRmN2U1LnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Apparel'),
  ];

  final List<Product> products = [
    Product(
        title: 'Pop Mart Labubu the Monsters Tasty Macarons Vinyl Face Sea Salt Coconut',
        price: '\$79',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzExMTE5NS82NjgyODIxOWJjNWFkYWNmOGY3OTgzMWI3N2UwZDI2Yy5wbmciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Luxury'),
    Product(
        title: 'Nike Big Swoosh Reversible Boa Jacket Black White (Asia Sizing)',
        price: '\$149',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzM1NTQ2LzMzN2EyZDQ0ZWY5Y2UxYjIxYWQyNzQ4MDM2YzRmN2U1LnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Apparel'),
    Product(
        title: 'New Balance 1906R White Gold',
        price: '\$179',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzM2NTExLzRlMjNhYjhmYTIzZDQ1OTlhZmFjNWJmNTE0ZDI2NjZiLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Shoes'),
    Product(
        title: 'Gentlewoman Micro Canvas Tote',
        price: '\$49',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzY0MzgzLzkxODMxYTVjNTg4YTNmODM2MGIwNmQ3MjlmMGMxNzUyLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Luxury'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Popular Products',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 179,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndexCard = index;
                    });
                  },
                  child: Container(
                    height: 179,
                    width: 190,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: selectedIndexCard == index
                            ? Border.all(
                                width: 1.5, color: const Color(0xffe5e5e5))
                            : Border.all(
                                width: 1.5,
                                color: Colors.black.withOpacity(4 / 100))),
                    child: Center(
                      child:
                        Image.network(
                          product.imageUrl,
                          height: 200,
                        ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemCount: products.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    'New Arrivals',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3/4.15
                        ),
                        itemCount: news.length,
                        itemBuilder: (BuildContext context, index) {
                          final newItem = news[index];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndexCard2 = index;
                              });
                            },
                            child: Container(
                              height: 278,
                              width: 190,
                              padding: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                  border: selectedIndexCard2 == index
                                      ? Border.all(
                                      width: 1.5, color: const Color(0xffe5e5e5))
                                      : Border.all(
                                      width: 1.5,
                                      color: Colors.black.withOpacity(4 / 100))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    newItem.imageUrl,
                                    height: 179,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          newItem.category,
                                          style: const TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.symmetric(vertical: 1.0),
                                          child: Text(
                                            newItem.title,
                                            style: const TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17.5,
                                                fontWeight: FontWeight.bold),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text(
                                          newItem.price,
                                          style: const TextStyle(
                                              color: Color(0xff47975a),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}
class _ShoesState extends State<Shoes> {
  int selectedIndexCard = 0;

  final List<Product> products = [
    Product(
        title: 'New Balance 1906R White Gold',
        price: '\$179',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzM2NTExLzRlMjNhYjhmYTIzZDQ1OTlhZmFjNWJmNTE0ZDI2NjZiLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Shoes'),
    Product(
        title: 'ASICS Gel NYC Cream Mocha',
        price: '\$184',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzEwOTcyMi82ZGQ4ZWMzZjBkN2RiOTZlOWM1NjgxMDM5N2Q5OTE5OS5wbmciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Shoes'),
    Product(
        title: 'Salomon XT-6 Gore-Tex Black Lunar Rock',
        price: '\$286',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzQxNTUzLzFiYjY0MGY0YmVmNmQ0ZWMwNDU1ZWRkZTA1OWI4YjNiLmpwZWciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Shoes'),
    Product(
        title: 'ASICS Cecilie Bahnsen x Gel-Quantum 360 VIII Silver Black',
        price: '\$521',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzExMzMyNS82ZjNhYWMyY2Y5MDQ0Y2MwOGE1ZjkzMTllMjI2ZTQzZC5wbmciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Shoes'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Shoes',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3/4.15
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndexCard = index;
                        });
                      },
                      child: Container(
                        height: 278,
                        width: 190,
                        padding: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: selectedIndexCard == index
                                ? Border.all(
                                width: 1.5, color: const Color(0xffe5e5e5))
                                : Border.all(
                                width: 1.5,
                                color: Colors.black.withOpacity(4 / 100))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              product.imageUrl,
                              height: 179,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.category,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 1.0),
                                    child: Text(
                                      product.title,
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.5,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                        color: Color(0xff47975a),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class Apparel extends StatefulWidget {
  const Apparel({super.key});

  @override
  State<Apparel> createState() => _ApparelState();
}
class _ApparelState extends State<Apparel> {
  int selectedIndexCard = 0;

  final List<Product> products = [
    Product(
        title: 'Fear Of God Essentials T-Shirt Jet Black',
        price: '\$134',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzc1MDY3L2E5Nzg5NjRiMzQ2YjA3NTEzYjI3ZDM2MWNmYjJjMzgxLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Apparel'),
    Product(
        title: 'Comme Des Garçons Play Striped Women Shirt Blue',
        price: '\$241',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzk2MDYvZGRlYWViNDM5MzAyMmRkYjI1Mjk0MDAyMTRlN2RiZGUucG5nIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxNDAwfX19',
        category: 'Apparel'),
    Product(
        title: 'Lifework Silket Big Radog Tee Grey',
        price: '\$64',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzcwMTA0L2RhYWFjMjJiZDM4MDYxOTc3MGM5YTNiMzFjOTQ5ZGVmLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Apparel'),
    Product(
        title: 'Travis Scott CACT.US CORP x Nike NRG BH Jacket Khaki (Asia Sizing)',
        price: '\$287',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzMyODQ0LzhkM2M3YjYxMmMwZWNiN2JmYTkwYmRjZmY5NzQwODAzLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Apparel'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Apparel',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3/4.15
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndexCard = index;
                        });
                      },
                      child: Container(
                        height: 278,
                        width: 190,
                        padding: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: selectedIndexCard == index
                                ? Border.all(
                                width: 1.5, color: const Color(0xffe5e5e5))
                                : Border.all(
                                width: 1.5,
                                color: Colors.black.withOpacity(4 / 100))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              product.imageUrl,
                              height: 179,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.category,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 1.0),
                                    child: Text(
                                      product.title,
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.5,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                        color: Color(0xff47975a),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class Luxury extends StatefulWidget {
  const Luxury({super.key});

  @override
  State<Luxury> createState() => _LuxuryState();
}
class _LuxuryState extends State<Luxury> {
  int selectedIndexCard = 0;

  final List<Product> products = [
    Product(
        title: 'Patek Philippe Geneve Nautilus RG Chronograph Date Brown Dial Alligator',
        price: '\$160.560',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzcwMDUwLzNlODhmYmI2MTNjMjYwMjcwMzVjODA0MWIwZWZmMjQ2LnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Luxury'),
    Product(
        title: 'Patek Philippe Geneve Nautilus Ladies Silvery Opaline Dial',
        price: '\$82.999',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzcwMDUyLzAzYjRhMjhhZmMyMmZiZjUwZTBkNmE3NWI1N2JlOWNmLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Luxury'),
    Product(
        title: 'Cartier Tank Chinoise Rose Gold Factory Set Diamond Ref: We300131',
        price: '\$16.258',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzEwNjAwNy8xMmU4ZjQ4MDVkNjI4N2ZlYWE1MTA1YjRhYjg3MTU5Yy5wbmciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Luxury'),
    Product(
        title: 'Christian Dior B27 Oblique Low Top Sneakers (Unisex)',
        price: '\$5.310',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzU0NjY0LzFmOWI3ZTMyZDVhMGQwMjU1ZTEzNjY5NGU3M2YwYTIzLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Luxury'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Luxury',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3/4.15
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndexCard = index;
                        });
                      },
                      child: Container(
                        height: 278,
                        width: 190,
                        padding: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: selectedIndexCard == index
                                ? Border.all(
                                width: 1.5, color: const Color(0xffe5e5e5))
                                : Border.all(
                                width: 1.5,
                                color: Colors.black.withOpacity(4 / 100))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              product.imageUrl,
                              height: 179,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.category,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 1.0),
                                    child: Text(
                                      product.title,
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.5,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                        color: Color(0xff47975a),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class Slides extends StatefulWidget {
  const Slides({super.key});

  @override
  State<Slides> createState() => _SlidesState();
}
class _SlidesState extends State<Slides> {
  int selectedIndexCard = 0;

  final List<Product> products = [
    Product(
        title: 'Nike Air More Uptempo Slide OG Black White',
        price: '\$78',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzU4OTI1LzZhMzk0ZDZlNGQ2NzViMjRlYTEwNzk1MDIwZGYwMTA5LmpwZWciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Slides'),
    Product(
        title: 'Air Jordan Hex Slides Black (W)',
        price: '\$56',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzc0OTIyLzIwZGM5MzNmNzEzZTljNjZkYzRiNWNhM2Q2OTgwZDgxLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Slides'),
    Product(
        title: 'Porto X Ludwig Black Slides',
        price: '\$17',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzc4MTM1LzZiNjlmNThlMTI1ZTczYWViMDhjOGI1OGM3NzQyYjdmLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Slides'),
    Product(
        title: 'Hermes Chypre Sandal',
        price: '\$1189',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzYwOTU5LzNlYWY3ZjNkNmRmZGU1OGI5NmY4ZDg4Yjg2NmY3ZThjLmpwZWciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Slides'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Slides',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3/4.15
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndexCard = index;
                        });
                      },
                      child: Container(
                        height: 278,
                        width: 190,
                        padding: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: selectedIndexCard == index
                                ? Border.all(
                                width: 1.5, color: const Color(0xffe5e5e5))
                                : Border.all(
                                width: 1.5,
                                color: Colors.black.withOpacity(4 / 100))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              product.imageUrl,
                              height: 179,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.category,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 1.0),
                                    child: Text(
                                      product.title,
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.5,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                        color: Color(0xff47975a),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class BasketBall extends StatefulWidget {
  const BasketBall({super.key});

  @override
  State<BasketBall> createState() => _BasketBallState();
}
class _BasketBallState extends State<BasketBall> {
  int selectedIndexCard = 0;

  final List<Product> products = [
    Product(
        title: 'Nike Kobe 1 Protro Undefeated Flight Jacket',
        price: '\$10.145',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzU1NjEvNDcxZWJhYjQtYWVkNS00Y2YxLTk2ODEtYmRlNTBkZmZmMWU4LmpwZWciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE0MDB9fX0=',
        category: 'Basketball'),
    Product(
        title: 'Nike LeBron 5 Mr. Basketball',
        price: '\$2.500',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzgzOTA3LzRlZjkwYjlkMmE5ODhmNDQ5OWNhZWRjNTU1OTRkNDY0LnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Basketball'),
    Product(
        title: 'Prada Basketball',
        price: '\$1130',
        imageUrl: 'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzM1NDk2L2JhOWFlY2UyNTA4YTQ3YzQwZmU4Y2MwNzQ3NzMzMmM1LnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ==',
        category: 'Basketball'),
    Product(
        title: 'Iphone 6',
        price: '\$200',
        imageUrl: 'assets/images/ip_6.avif',
        category: 'Handphone'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Basketball',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3/4.15
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndexCard = index;
                        });
                      },
                      child: Container(
                        height: 278,
                        width: 190,
                        padding: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: selectedIndexCard == index
                                ? Border.all(
                                width: 1.5, color: const Color(0xffe5e5e5))
                                : Border.all(
                                width: 1.5,
                                color: Colors.black.withOpacity(4 / 100))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              product.imageUrl,
                              height: 179,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.category,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 1.0),
                                    child: Text(
                                      product.title,
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.5,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                        color: Color(0xff47975a),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class Running extends StatefulWidget {
  const Running({super.key});

  @override
  State<Running> createState() => _RunningState();
}
class _RunningState extends State<Running> {
  int selectedIndexCard = 0;

  final List<Product> products = [
    Product(
        title: 'Iphone 12 Mini',
        price: '\$430',
        imageUrl: 'assets/images/ip_12mini.webp',
        category: 'Handphone'),
    Product(
        title: 'Iphone 13 Mini',
        price: '\$630',
        imageUrl: 'assets/images/ip_13mini.webp',
        category: 'Handphone'),
    Product(
        title: 'Iphone 14 Pro',
        price: '\$1340',
        imageUrl: 'assets/images/ip_14.jpg',
        category: 'Handphone'),
    Product(
        title: 'Iphone 16',
        price: '\$1830',
        imageUrl: 'assets/images/ip_16.png',
        category: 'Handphone'),
    Product(
        title: 'Iphone 6',
        price: '\$200',
        imageUrl: 'assets/images/ip_6.avif',
        category: 'Handphone'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Smart Watch',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3/4.15
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndexCard = index;
                        });
                      },
                      child: Container(
                        height: 278,
                        width: 190,
                        padding: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: selectedIndexCard == index
                                ? Border.all(
                                width: 1.5, color: const Color(0xffe5e5e5))
                                : Border.all(
                                width: 1.5,
                                color: Colors.black.withOpacity(4 / 100))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              product.imageUrl,
                              height: 179,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.category,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 1.0),
                                    child: Text(
                                      product.title,
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.5,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                        color: Color(0xff47975a),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class Soccer extends StatefulWidget {
  const Soccer({super.key});

  @override
  State<Soccer> createState() => _SoccerState();
}
class _SoccerState extends State<Soccer> {
  int selectedIndexCard = 0;

  final List<Product> products = [
    Product(
        title: 'Iphone 12 Mini',
        price: '\$430',
        imageUrl: 'assets/images/ip_12mini.webp',
        category: 'Handphone'),
    Product(
        title: 'Iphone 13 Mini',
        price: '\$630',
        imageUrl: 'assets/images/ip_13mini.webp',
        category: 'Handphone'),
    Product(
        title: 'Iphone 14 Pro',
        price: '\$1340',
        imageUrl: 'assets/images/ip_14.jpg',
        category: 'Handphone'),
    Product(
        title: 'Iphone 16',
        price: '\$1830',
        imageUrl: 'assets/images/ip_16.png',
        category: 'Handphone'),
    Product(
        title: 'Iphone 6',
        price: '\$200',
        imageUrl: 'assets/images/ip_6.avif',
        category: 'Handphone'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Smart Watch',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3/4.15
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndexCard = index;
                        });
                      },
                      child: Container(
                        height: 278,
                        width: 190,
                        padding: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: selectedIndexCard == index
                                ? Border.all(
                                width: 1.5, color: const Color(0xffe5e5e5))
                                : Border.all(
                                width: 1.5,
                                color: Colors.black.withOpacity(4 / 100))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              product.imageUrl,
                              height: 179,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.category,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 1.0),
                                    child: Text(
                                      product.title,
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17.5,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                        color: Color(0xff47975a),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}