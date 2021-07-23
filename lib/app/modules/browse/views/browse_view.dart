import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

String primaryColor = '#090615';
String secondaryColor = '#2E2D3A';

class BrowseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              GridView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 7,
                    childAspectRatio: 1.65 / 2,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                children: [
                  generateGridItem('Iris', 22, 'Entrepreneur',
                      'https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  generateGridItem('Amina', 20, 'Data Analysis',
                      'https://images.pexels.com/photos/3142449/pexels-photo-3142449.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  generateGridItem('Natali', 28, 'Fashion Designer',
                      'https://images.pexels.com/photos/1580270/pexels-photo-1580270.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  generateGridItem('Becky', 25, 'Student',
                      'https://images.pexels.com/photos/1372134/pexels-photo-1372134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  generateGridItem('Cara', 21, 'Accountant',
                      'https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  generateGridItem('Mithechel', 20, 'Teacher',
                      'https://images.pexels.com/photos/1391499/pexels-photo-1391499.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  generateGridItem('Samantha', 21, 'Business',
                      'https://images.pexels.com/photos/1468379/pexels-photo-1468379.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  generateGridItem('Karla', 20, 'Teacher',
                      'https://images.pexels.com/photos/1391499/pexels-photo-1391499.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                ],
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
