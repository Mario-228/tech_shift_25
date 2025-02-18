import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return _buildDesktopNavBar();
        } else {
          return _buildMobileNavBar(context);
        }
      },
    );
  }

  Widget _buildDesktopNavBar() {
    return AppBar(
      backgroundColor: Colors.indigo[900],
      elevation: 0,
      toolbarHeight: 70,
      titleSpacing: 20,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 40,
              ),
            ],
          ),
          Row(
            children: [
              _navItem("HOME", isActive: true),
              _navItem("AGENDA"),
              _navItem("SPEAKERS"),
              _navItem("TICKETS"),
              _navItem("GALLERY"),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text("GET A TICKET", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileNavBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.indigo[900],
      elevation: 0,
      title: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 40,
          ),
          SizedBox(width: 10),
          Text(
            "TECH SHIFT",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ],
    );
  }

  Widget _navItem(String title, {bool isActive = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: isActive ? Colors.blueAccent : Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
