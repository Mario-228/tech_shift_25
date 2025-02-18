import 'package:flutter/material.dart';
import 'package:tech_shift_25/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo[900]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/logo.png', height: 50),
                  SizedBox(height: 10),
                  Text(
                    "TECH SHIFT",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            _drawerItem("HOME", Icons.home),
            _drawerItem("AGENDA", Icons.event),
            _drawerItem("SPEAKERS", Icons.mic),
            _drawerItem("TICKETS", Icons.confirmation_num),
            _drawerItem("GALLERY", Icons.photo),
          ],
        ),
      ),
      body: Center(
        child: Text("Home View Content Here"),
      ),
    );
  }

  Widget _drawerItem(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(title),
      onTap: () {},
    );
  }
}
