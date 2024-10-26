import 'package:flutter/material.dart';
import 'package:uts_hafizh/basic_widget/inbox_page.dart';
import 'package:uts_hafizh/basic_widget/image_widget.dart';
import 'package:uts_hafizh/basic_widget/history_page.dart';
import 'package:uts_hafizh/basic_widget/account_page.dart';
import 'package:uts_hafizh/basic_widget/header_widget.dart';
import 'package:uts_hafizh/basic_widget/donasi_widget.dart';
import 'package:uts_hafizh/basic_widget/layanan_widget.dart';
import 'package:uts_hafizh/basic_widget/banner_promo_widget.dart';
import 'package:uts_hafizh/basic_widget/ikon_layanan_widget.dart';
import 'package:uts_hafizh/basic_widget/bottom_navigation_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onTap(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });

      // Navigasi berdasarkan index
      if (index == 1) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const TransactionHistoryPage(),
          ),
        );
      } else if (index == 2) {
        // Navigasi ke halaman Bayar
      } else if (index == 3) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const InboxPage(),
            ),
          );
      } else if (index == 4) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const AccountPage(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const ImageWidget(),
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(),
              const SizedBox(height: 20),
              const LayananWidget(),
              const SizedBox(height: 20),
              const IkonLayananWidget(),
              const SizedBox(height: 20),
              const DonasiWidget(),
              const SizedBox(height: 20),
              const BannerPromoWidget(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(onTap: _onTap),
    );
  }
}
