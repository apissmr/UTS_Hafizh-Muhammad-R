import 'package:flutter/material.dart';
import 'package:uts_hafizh/basic_widget/home_page.dart';
import 'package:uts_hafizh/basic_widget/inbox_page.dart';
import 'package:uts_hafizh/basic_widget/history_page.dart';
import 'package:uts_hafizh/basic_widget/bottom_navigation_widget.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _currentIndex = 4; 

  void _onTap(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
      if (index == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      } else if (index == 1) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const TransactionHistoryPage(),
          ),
        );
      } else if (index == 2) {
        
      } else if (index == 3) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const InboxPage(),
          ),
        );
      } else if (index == 4) {
        
      }
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Page'),
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Info
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hafizh Muhammad Rabbani',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '0857-XXXX-XXXX',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Account Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildAccountSettingItem('Account Type'),
              _buildAccountSettingItem('Account Setting'),
              _buildAccountSettingItem('LinkAja Syariah'),
              _buildAccountSettingItem('Payment Method'),
              _buildAccountSettingItem('Email'),
              _buildAccountSettingItem('Security Question'),
              _buildAccountSettingItem('PIN Setting'),
              _buildAccountSettingItem('Language'),
              _buildAccountSettingItem('Terms of Service'),
              _buildAccountSettingItem('Privacy Policy'),
              _buildAccountSettingItem('Help Center'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        onTap: _onTap,
      ),
    );
  }

  Widget _buildAccountSettingItem(String title) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
      },
    );
    
  }
  
}
