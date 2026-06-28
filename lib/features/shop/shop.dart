import 'package:first_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List products = [
    {
      "image":
          "data:image/jpeg;base64,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",
      "name": "Pro Soccer Ball",
      "subname": "FIFA approved match ball",

      "price": "\$29.99",
    },

    {
      "image":
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=600&auto=format&fit=crop",
      "name": "Runner X1",
      "subname": "Lightweight running shoes",
      "price": "\$89.99",
    },

    {
      "image":
          "https://tse2.mm.bing.net/th/id/OIP.4AK2iiDvR9lVvcOKy4hQtAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3",
      "name": "Classic Jersey",
      "subname": "Breathable fabric",
      "price": "\$45.00",
    },

    {
      "image":
          "https://th.bing.com/th/id/R.b4ac84647602aaa1332054e76491de1e?rik=MI%2fmfwVNWwSBdQ&pid=ImgRaw&r=0",
      "name": "Gym Duffle Bag",
      "subname": "Water-resistant with shoe",
      "price": "\$35.5",
    },
    {
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.pdnAiMM9Ws2BU_A2NcaX9AHaIa?rs=1&pid=ImgDetMain&o=7&rm=3",
      "name": "Pro Tennis Racket",
      "subname": "Carbon fiber frame",
      "price": "\$120.00",
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/08/01/00/17/woman-2562216_1280.jpg",
      "name": "Yoga Mat",
      "subname": "Non-slip eco friendly",
      "price": "\$22.0",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      body: Column(
        children: [
          toppart(),
          SizedBox(height: 20),
          Expanded(child: itemlist()),
        ],
      ),
    );
  }

  Widget toppart() {
    return Container(
      width: double.infinity,
      height: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "All Products",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                  color: AppColors.smallcontainer,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.filter_list_outlined),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget itemlist() {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(12),

          padding: EdgeInsets.all(16),
          height: 130,
          width: double.infinity,
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
          child: Stack(
            children: [
              Row(
                children: [
                  Image.network(
                    products[index]["image"],
                    fit: BoxFit.cover,
                    height: 90,
                    width: 90,
                  ),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products[index]["name"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        products[index]["subname"],
                        style: TextStyle(
                          color: Color.fromARGB(255, 172, 168, 168),
                          fontSize: 13,
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        products[index]["price"],
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
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
