import 'package:first_project/core/apis/widget/app_search_field.dart';
import 'package:first_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List products = [
    {
      "image":
          "data:image/jpeg;base64,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",
      "name": "Pro Soccer Ball",
      "price": "\$29.99",
    },

    {
      "image":
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=600&auto=format&fit=crop",
      "name": "Runner X1",
      "price": "\$89.99",
    },

    {
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.4AK2iiDvR9lVvcOKy4hQtAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3",
      "name": "Classic Jersey",
      "price": "\$45.00",
    },

    {
      "image":
          "https://th.bing.com/th/id/R.b4ac84647602aaa1332054e76491de1e?rik=MI%2fmfwVNWwSBdQ&pid=ImgRaw&r=0",
      "name": "Gym Duffle Bag",
      "price": "\$35.5",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            toppart(),
            SizedBox(height: 24),
            types(),
            SizedBox(height: 18),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Popular Items",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //SizedBox(height: 5),
            Container(padding: EdgeInsets.all(20), child: productcon()),
          ],
        ),
      ),
    );
  }

  Widget toppart() {
    return Container(
      width: double.infinity,
      height: 140,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Discover",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),

          AppSearchField(hintText: 'Search Products....'),
        ],
      ),
    );
  }

  Widget types() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 50,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            // height: 50,
            width: 110,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "Shoes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            // height: 50,
            width: 110,
            decoration: BoxDecoration(
              color: AppColors.smallcontainer,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "Jerseys",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            // height: 50,
            width: 110,
            decoration: BoxDecoration(
              color: AppColors.smallcontainer,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "Bilts",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            // height: 50,
            width: 110,
            decoration: BoxDecoration(
              color: AppColors.smallcontainer,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "Acessories",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            // height: 50,
            width: 110,
            decoration: BoxDecoration(
              color: AppColors.smallcontainer,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "Others",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }

  Widget productcon() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.8,
      ),

      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),

            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // الصورة والقلب
              Stack(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Image.network(
                      products[index]["image"],
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ),

                  Positioned(
                    right: 8,
                    top: 8,

                    child: Container(
                      padding: EdgeInsets.all(7),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),

                      child: Icon(Icons.favorite_border, color: Colors.grey),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Text(
                products[index]["name"],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),

              SizedBox(height: 5),

              Text(
                products[index]["price"],
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 204, 229, 250),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      // action
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(width: 5),

                        Text(
                          'Add',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
