import 'package:flutter/material.dart';
import 'package:ecommerce_app/widgets/makeProduct.dart';

class CategoryPage extends StatefulWidget {
  final String name, image, tag;
  CategoryPage({this.name, this.image, this.tag});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.9),
                          Colors.black.withOpacity(.3),
                        ],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(.5),
                                        blurRadius: 3,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.grey[700],
                                      size: 18,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(.5),
                                        blurRadius: 3,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.grey[700],
                                      size: 18,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(.5),
                                        blurRadius: 3,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.grey[700],
                                      size: 18,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 60),
                        Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Products',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'See all',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward_ios,
                              size: 12, color: Colors.grey)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  makeProduct(image: 'assets/images/clothes1.jpg',name: 'Jackets', price: '150\$'),
                  makeProduct(image: 'assets/images/denim.jpg',name: 'Levi Denim set of 3', price: '400\$'),
                  makeProduct(image: 'assets/images/converse.jpg',name: 'Converse Classic White', price: '120\$'),
                  makeProduct(image: 'assets/images/shirts.jpg',name: 'Shirts Pack of 3', price: '350\$'),
                  makeProduct(image: 'assets/images/tshirt.jpg',name: 'Stay wild tee', price: '30\$'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
