import 'package:flutter/material.dart';
import 'package:ecommerce_app/widgets/makeItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.1),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
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
                                size: 23,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 40,
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
                                size: 23,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Our New Collection',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: <Widget>[
                                Text(
                                  'View More',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.white, size: 15)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('See all',
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategoryItem(
                            image: 'assets/images/clothes.jpg',
                            name: 'Clothes',context: context,tag:'clothes'),
                        makeCategoryItem(
                            image: 'assets/images/tech.jpg', name: 'Gadgets',context: context,tag:'tech'),
                        makeCategoryItem(
                            image: 'assets/images/earbuds.jpg',
                            name: 'Earphones',context: context,tag:'earphones'),
                        makeCategoryItem(
                            image: 'assets/images/camera.jpg', name: 'Cameras',context: context,tag:'camera'),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Best Selling',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('See all',
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeBestSellingItem(
                            image: 'assets/images/person.jpg',
                            name: 'Sweat Shirts'),
                        makeBestSellingItem(
                            image: 'assets/images/airpods.jpg', name: 'Airpods'),
                        makeBestSellingItem(
                            image: 'assets/images/clothes2.jpg',
                            name: 'Summer Outfit'),
                        makeBestSellingItem(
                            image: 'assets/images/person1.jpg', name: 'Blazers'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
