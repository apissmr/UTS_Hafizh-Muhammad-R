import 'package:flutter/material.dart';
import 'package:uts_hafizh/basic_widget/home_page.dart';
import 'package:uts_hafizh/basic_widget/history_page.dart';
import 'package:uts_hafizh/basic_widget/account_page.dart';
import 'package:uts_hafizh/basic_widget/bottom_navigation_widget.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  int _currentIndex = 3; 

  void _onTap(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
      if (index == 0) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else if (index == 1) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TransactionHistoryPage()));
      } else if (index == 4) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AccountPage()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> messages = [
      'Diskon 50% untuk transaksi di Merchant X!',
      'Voucher Rp50.000 untuk setiap top-up di bulan ini.',
      'Promo spesial untuk pengguna baru.',
      'Gratis biaya admin untuk pembayaran tagihan listrik!',
      'Cashback hingga 20% untuk transaksi online.',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        backgroundColor: Colors.red[800],
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: const Icon(Icons.local_offer, color: Colors.red),
              title: Text(messages[index]),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Pesan: ${messages[index]}')),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(onTap: _onTap),
    );
  }
}
