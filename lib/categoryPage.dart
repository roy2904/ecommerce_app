import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String name, image, tag;
  CategoryPage({this.name, this.image, this.tag});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Hero(
          tag: widget.tag,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.cover),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.0),
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
