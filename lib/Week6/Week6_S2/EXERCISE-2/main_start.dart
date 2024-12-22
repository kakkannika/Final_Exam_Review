import 'package:flutter/material.dart';
import '../../Week6_S2/EXERCISE-2/model/profile_tile_model.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(),
  ));
}

const Color mainColor = Color(0xff5E9FCD);

class ProfileApp extends StatelessWidget {
  final ProfileData profile = ProfileData(
    name: 'Kannika Kak',
    position: 'Flutter Developer',
    avatarUrl: "assets/images/flutter.png",
    tiles: [
      TileData(icon: Icons.phone, title: 'Phone Number', value: "+855 10727093"),
      TileData(icon: Icons.location_on, title: "Address", value: "Cambodia"),
      TileData(icon: Icons.email, title: "Email", value: "Kannika@student.cadt.edu.kh"),
      TileData(icon: Icons.school, title: "University", value: "CADT"),
      TileData(icon: Icons.subject_outlined, title: 'Major', value: 'Computer Science'),
    ],
  );

   ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor.withAlpha(100),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          'CADT Student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 20),
          // Profile Header Section
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(profile.avatarUrl),
              ),
              const SizedBox(height: 20),
              Text(
                profile.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                profile.position,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Tiles Section
          Column(
            children: profile.tiles.map((tile) {
              return ProfileTile(
                icon: tile.icon,
                title: tile.title,
                data: tile.value,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  final IconData icon;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(icon, color: mainColor),
          title: Text(title),
          subtitle: Text(data),
        ),
      ),
    );
  }
}
