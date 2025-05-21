import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String price;
  final String description;
  final String lunnch = 'Lunch & Dinner/Monthly Lunch';
  final String lunnch1 = 'Monthly Dinner';
  final String lunnch2 = '1,00000 12,0000';
  final String lunnch3 = 'Only for Asadgate,Dhaka. Bangladesh';
  final String lunnch4 = 'Contact for more info: +8801711236928';
  

  const DetailPage({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.description,
    
    
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF4E3),
      appBar: AppBar(
        backgroundColor: Color(0xFFFDF4E3),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFF9BC1F)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Color(0xFFF9BC1F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 386,
              cacheWidth: 278,
              fit: BoxFit.cover,
            ),
           SizedBox (height: 16), 
       
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            _buildImageContainer(
             imagePath: 'assets/images/3..png',
            ),
            SizedBox(width: 15),
            _buildImageContainer(
              imagePath: 'assets/images/4..png',
            ),
            SizedBox  (width: 15),
            _buildImageContainer(
              imagePath: 'assets/images/5..png',
            ),
            SizedBox  (width: 15),
                  ],
               ),
            SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                lunnch,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox  (height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                lunnch1,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                lunnch2,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                lunnch3,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                lunnch4,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 1),
            
              Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Container(
      margin: EdgeInsets.only(left: 16),
      width: 120, 
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xFFF9BC1F),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Icon(Icons.remove, color: Colors.white),
            onPressed: () {
              
            },
          ),
          Container(
            child: Text(1.toString(), style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              
            },
          ),
        ],
      ),
    ),
    SizedBox(width: 16),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 120,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xFFF9BC1F),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.shopping_cart, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'buy now',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ],
    ),
  ],
),
         ]      
        ),
      )    
    );

  }

  Widget _buildImageContainer({required String imagePath}) {
    return Container(
      width:115,
      height: 92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Color(0xFFF9BC1F),
          width: 2,
        ),
      ),
    );
  }
}