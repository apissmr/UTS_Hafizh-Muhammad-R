import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  final Function(int) onTap;

  const BottomNavigationWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavBarItem(Icons.home, 'Beranda', 0),
              _buildNavBarItem(Icons.history, 'Riwayat', 1),
              _buildNavBarItem(Icons.qr_code_scanner, 'Bayar', 2),
              _buildNavBarItem(Icons.message, 'Pesan', 3),
              _buildNavBarItem(Icons.account_circle, 'Akun', 4),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNavBarItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color: Color.fromARGB(255, 148, 148, 148)),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 123, 123, 123)),
          ),
        ],
      ),
    );
  }
}
