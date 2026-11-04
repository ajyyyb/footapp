import 'package:flutter/material.dart';
import 'package:footapp/detail_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF4E3),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFFF9BC1F),
            size: 30,
          ),
          onPressed: () {},
        ),
        backgroundColor: Color(0xFFFDF4E3),
        title: Text(
          'Choose the\nfood you love',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFC634),
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _buildHomeContent(),
          Center(child: Text('Favorites')),
          Center(child: Text('Cart')),
          Center(child: Text('Profile')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFDF4E3),
        selectedItemColor: Color(0xFFF9BC1F),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee_sharp),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_sharp),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildHomeContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                _buildFoodButton(
                  title: 'Veg Dinner',
                  bgColor: Color(0xFFF9BC1F),
                  textColor: Colors.white,
                ),
                SizedBox(width: 20),
                _buildFoodButton(
                  title: 'Non Veg Dinner',
                  bgColor: Colors.white,
                  textColor: Color(0xFFF9BC1F),
                ),
                SizedBox(width: 20),
                _buildFoodButton(
                  title: 'Chinese',
                  bgColor: Colors.white,
                  textColor: Color(0xFFF9BC1F),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildSearchBar(),
          SizedBox(height: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildImageContainer(
                  imagePath: 'assets/images/1..png',
                  title: 'Vegetarian Dinner',
                  subtitle: 'Lorem ipsum dolor sit amet',
                  price: 'Just 0.60\$',
                  description: 'Lunch & Dinner/Monthly Lunch',
                  lunnch: 'Lunch & Dinner/Monthly Lunch',
                  
                  width: MediaQuery.of(context).size.width * 0.42,
                ),
                _buildImageContainer(
                  imagePath: 'assets/images/2..png',
                  title: 'Non-Veg Dinner',
                  subtitle: '1 Person per plate',
                  price: 'Just 0.80\$',
                  lunnch: 'Lunch & Dinner/Monthly Lunch',
                  description:'Lunch & Dinner/Monthly Lunch' ,
                  width: MediaQuery.of(context).size.width * 0.42,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 51,
            decoration: BoxDecoration(
              color: Color(0xFFFFEEC2),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Color(0xFFF9BC1F),
                  size: 30,
                ),
                SizedBox(width: 8),
                Text(
                  'Search your food',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 61,
          height: 51,
          decoration: BoxDecoration(
            color: Color(0xFFFFC634),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFoodButton({
    required String title,
    required Color bgColor,
    required Color textColor,
    

  }) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bgColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      height: 60,
      width: 122,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer({
    required String imagePath,
    required String title,
    required String subtitle,
    required String price,
    required String description,
    required double width,
    required String lunnch,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              imagePath: imagePath,
              price: price,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        width: width,
        height: 369,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                imagePath,
                width: width,
                height: 178,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF9BC1F),
                    ),
                  ),
                  SizedBox(height: 8),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}