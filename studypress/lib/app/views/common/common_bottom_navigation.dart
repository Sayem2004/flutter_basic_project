import "package:flutter/material.dart";
import "footericon.dart";

class CommonBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CommonBottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 9, 8, 22),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.94),
        border: const Border(
          top: BorderSide(
            color: Color.fromRGBO(232, 234, 240, 1),
          ),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(11, 32, 51, 0.28),
            offset: Offset(0, -10),
            blurRadius: 24,
            spreadRadius: -18,
          ),
        ],
      ),

      child: Row(
        children: [
          FooterIcon(
            icon: Icons.home_outlined,
            title: "Today",
            selected: selectedIndex == 0,
            onTap: () => onTap(0),
          ),

          FooterIcon(
            icon: Icons.menu_book_outlined,
            title: "Learn",
            selected: selectedIndex == 1,
            onTap: () => onTap(1),
          ),

          FooterIcon(
            icon: Icons.fact_check_outlined,
            title: "Tests",
            selected: selectedIndex == 2,
            onTap: () => onTap(2),
          ),

          FooterIcon(
            icon: Icons.autorenew,
            title: "Revision",
            selected: selectedIndex == 3,
            onTap: () => onTap(3),
          ),

          FooterIcon(
            icon: Icons.apps,
            title: "More",
            selected: selectedIndex == 4,
            onTap: () => onTap(4),
          ),
        ],
      ),
    );
  }
}