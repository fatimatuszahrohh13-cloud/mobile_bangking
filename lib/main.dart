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
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Aligment.topCenter,
                    end: Aligment.bottomCenter,
                    colors: [Color(0xFF004D8C), Color(0xFF0074D9)],
                  ),
                ),
                padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAligment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Selamat Siang,", style: TextStyle(color: Colors.white70, fontSize: 14)),
                        Text("Fatimatus", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Icon(Icons.headset_mic_outlined, color: Colors.white),
                  ],
                ),
              ),
              // 2.KOTAK PUTIH 1 (SALDO & TRANSFER JADI SATU)
              Positioned(
                top: 130,
                left: 15,
                right: 15,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 5)],
                  ),
                  child: Column(
                    children: [
                      _buildBlueSaldoCard(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildTopMenu(Icons.send, "Transfer", Colors.blue),
                            _buildTopMenu(Icons.receipt, "BRIVA", Colors.teal),
                            _buildTopMenu(Icons.water_drop, "PDAM", Colors.blueAccent),
                            _buildTopMenu(Icons.phone_android, "Pulsa/Data", Colors.green),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 180), //Jarak Aman

          // 3.KOTAK PUTIH 2 (PROMO WARNA BIRU)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFF00529C), Color(0xFF0074D9)]),
                borderRadius: BorderRadius.circular(12),
              ),
              
            )
          )
        )
      )
    )
  }
}