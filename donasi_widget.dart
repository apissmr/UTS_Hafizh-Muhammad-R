import 'package:flutter/material.dart';

class DonasiWidget extends StatelessWidget {
  const DonasiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _IconWithLabel(icon: Icons.church, label: 'Gereja'),
        _IconWithLabel(icon: Icons.volunteer_activism, label: 'Infaq'),
        _IconWithLabel(icon: Icons.favorite, label: 'Other Donation'),
        _IconWithLabel(icon: Icons.more_horiz, label: 'Lainnya'),
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
