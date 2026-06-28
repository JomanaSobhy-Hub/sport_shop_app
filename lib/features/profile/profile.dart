import 'package:first_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            profilecont(),
            SizedBox(height: 20),
            smallcont(),
            SizedBox(height: 20),
            bigcont(),
            Container(
              margin: EdgeInsets.all(17),
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: ListTile(
                leading: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.logout, size: 30, color: Colors.redAccent),
                ),
                title: Text(
                  "Log Out",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profilecont() {
    return Container(
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: const Color.fromARGB(255, 162, 211, 251),
            child: Text(
              'JD',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "John Doe",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text("john.doe@flutter.dev", style: TextStyle(color: Colors.grey)),
          SizedBox(height: 15),
          Container(
            width: 200,
            height: 50,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(3)),
              border: Border.all(color: Colors.blue),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  // action
                },
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget smallcont() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 130,
          width: 110,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.archive_outlined, color: Colors.blue, size: 30),
              SizedBox(height: 8),
              Text(
                "12",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 6),
              Text("ORDERS", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        Container(
          height: 130,
          width: 110,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite_border, color: Colors.blue, size: 30),
              SizedBox(height: 8),
              Text(
                "12",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 6),
              Text("Wishlist", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        Container(
          height: 130,
          width: 110,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_border, color: Colors.blue, size: 30),
              SizedBox(height: 8),
              Text(
                "3",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 6),
              Text("REVIEWS", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }

  Widget bigcont() {
    return Container(
      margin: EdgeInsets.all(17),
      width: double.infinity,
      height: 318,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
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
          ListTile(
            leading: Icon(Icons.archive_outlined, size: 30),
            title: Text(
              "My Orders",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  // action
                },
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 248, 245, 245)),

          ListTile(
            leading: Icon(Icons.favorite_border, size: 30),
            title: Text(
              "Favorites",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  // action
                },
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 248, 245, 245)),
          ListTile(
            leading: Icon(Icons.payment_outlined, size: 30),
            title: Text(
              "Payment Methods",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 248, 245, 245)),
          ListTile(
            leading: Icon(Icons.help_outline, size: 30),
            title: Text(
              "Help Center",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  // action
                },
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 248, 245, 245)),
        ],
      ),
    );
  }
}
