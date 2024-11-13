import 'package:flutter/material.dart';

class FilterMenuCard extends StatelessWidget {
  const FilterMenuCard({
    super.key,
    required this.title,
    required this.icon,
    required this.iconBackgroundColor,
    required this.count,
  });

  final String title;
  final IconData icon;
  final Color iconBackgroundColor;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: iconBackgroundColor,
                child: Icon(icon, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(title),
            ],
          ),
          Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}