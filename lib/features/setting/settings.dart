import 'package:first_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isActive = true;
  bool isActivee = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'GENERAL',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              generalcont(),
              SizedBox(height: 30),
              Text(
                'ACCOUNT',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              accountcont(),
              SizedBox(height: 30),
              Text(
                'ABOUT',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 80,
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
                child: ListTile(
                  leading: Icon(Icons.info_outline, size: 30),
                  title: Text(
                    "Version",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Text(
                    "1.0.0",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget generalcont() {
    return Container(
      // margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 230,
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
            leading: Icon(Icons.dark_mode_outlined, size: 30),
            title: Text(
              "Dark Mode",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: Switch(
              value: isActive,
              activeTrackColor: Colors.blue,
              activeThumbColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isActive = value;
                });
              },
            ),
          ),
          SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 248, 245, 245)),

          ListTile(
            leading: Icon(Icons.notifications_none_outlined, size: 30),
            title: Text(
              "Notificatios",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: Switch(
              value: isActivee,
              activeTrackColor: Colors.blue,
              activeThumbColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isActivee = value;
                });
              },
            ),
          ),
          SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 248, 245, 245)),
          ListTile(
            leading: Icon(Icons.language_outlined, size: 30),
            title: Text(
              "Languge",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: GestureDetector(
              child: Text(
                'English',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget accountcont() {
    return Container(
      // margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 230,
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
            leading: Icon(Icons.lock_outline, size: 30),
            title: Text(
              "Change Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 248, 245, 245)),

          ListTile(
            leading: Icon(Icons.shield_outlined, size: 30),
            title: Text(
              "Privacy Policy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(height: 8),
          Divider(color: const Color.fromARGB(255, 248, 245, 245)),
          ListTile(
            leading: Icon(Icons.description_outlined, size: 30),
            title: Text(
              "Terms of Services",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
