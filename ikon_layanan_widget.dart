import 'package:flutter/material.dart';

class IkonLayananWidget extends StatelessWidget {
  const IkonLayananWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _IconWithLabel(icon: Icons.phone_android, label: 'Isi Pulsa / Data'),
        _IconWithLabel(icon: Icons.electrical_services, label: 'Electricity'),
        _IconWithLabel(icon: Icons.tv, label: 'Cable TV & Internet'),
        _IconWithLabel(icon: Icons.credit_card, label: 'Kartu Uang Elektronik'),
      ],
    );
  }
}

class _IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  const _IconWithLabel({Key? key, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40),
        const SizedBox(height: 8),
        FittedBox(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
