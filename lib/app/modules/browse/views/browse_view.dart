import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

String primaryColor = '#090615';
String secondaryColor = '#2E2D3A';

class BrowseView extends StatelessWidget {
  final List gridItems = [
    {
      'name': 'Iris',
      'age': 22,
      'title': 'Entrepreneur',
      'image_url':
          'https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
    },
    {
      'name': 'Amina',
      'age': 20,
      'title': 'Data Analysis',
      'image_url':
          'https://images.pexels.com/photos/3142449/pexels-photo-3142449.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
    },
    {
      'name': 'Natali',
      'age': 28,
      'title': 'Fashion Designer',
      'image_url':
          'https://images.pexels.com/photos/1580270/pexels-photo-1580270.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
    },
    {
      'name': 'Becky',
      'age': 25,
      'title': 'Student',
      'image_url':
          'https://images.pexels.com/photos/1372134/pexels-photo-1372134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
    },
    {
      'name': 'Cara',
      'age': 21,
      'title': 'Accountant',
      'image_url':
          'https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
    },
    {
      'name': 'Mithechel',
      'age': 20,
      'title': 'Teacher',
      'image_url':
          'https://images.pexels.com/photos/1391499/pexels-photo-1391499.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
    },
    {
      'name': 'Samantha',
      'age': 21,
      'title': 'Business',
      'image_url':
          'https://images.pexels.com/photos/1468379/pexels-photo-1468379.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
    },
    {
      'name': 'Karla',
      'age': 20,
      'title': 'Teacher',
      'image_url':
          'https://images.pexels.com/photos/1391499/pexels-photo-1391499.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3.2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor(primaryColor),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Container(
        color: HexColor(primaryColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Discover',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30,
              ),
              StaggeredGridView.countBuilder(
                itemCount: gridItems.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                crossAxisSpacing: 7,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                itemBuilder: (context, index) {
                  return generateGridItem(
                      gridItems[index]['name'],
                      gridItems[index]['age'],
                      gridItems[index]['title'],
                      gridItems[index]['image_url']);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget generateGridItem(
    String name, int age, String designation, String imageUrl) {
  return GestureDetector(
    onTap: () {
      print('Hi, $name');
    },
    child: Card(
      margin: const EdgeInsets.all(0),
      color: HexColor(primaryColor),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ListTile(
          minVerticalPadding: 0,
          contentPadding: const EdgeInsets.all(0),
          title: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 170,
          ),
          subtitle: Container(
            color: HexColor(secondaryColor),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name, $age',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  designation,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
