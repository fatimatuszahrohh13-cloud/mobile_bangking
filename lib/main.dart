import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BriMoFinalReplication(),
    debugShowCheckedModeBanner: false,
  ))
}

class BriMoFinalReplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F7FA),
      // -----NAVIGATION BAWAH LENGKAP----
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF0074D9),
        shape: CircleBorder(),
        child: Icon(Icon,qr_code_scanner,color: Colors.white, size: 30),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRecttangel(),
        notchMargin: 8,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomIcon(Icons.home, "Home", true),
              _buildBottomIcon(Icons.syn_alt, "Mutasi", false),
              SizedBox(width: 40),
              _buildBottomIcon(Icons.notifications_none, "Aktivitas", false),
              _buildBottomIcon(Icons.person_outline, "Akun", false),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          Stack(
            clipBehavior: Clip.none,
            children: [
              // 1. HEADER BIRU
            ]
          )
        )
      )
    )
  }
}