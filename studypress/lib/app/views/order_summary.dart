
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";
import "common/button.dart";
import 'enrolled.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  String selectedPayment = "bKash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 6, 20, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                const BackHeader(
                  title: "Order summary",
                ),

                const SizedBox(height: 18),

                // Course Information
                CommonWhitCard(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(238, 240, 245, 1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image_outlined,
                              size: 17,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),
                            SizedBox(height: 4),
                            CommonLightText(
                              title: "Cover",
                              fontSize: 9,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 13),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonBoldText(
                              title: "BCS 46th Complete Preparation",
                              fontSize: 14.5,
                              height: 1.25,
                              letterSpacing: -0.29,
                              fontWeight: FontWeight.w700,
                            ),

                            SizedBox(height: 6),

                            CommonLightText(
                              title:
                              "Md. Rahman Sir · hybrid batch · access until 12 Nov 2026",
                              fontSize: 11.5,
                              height: 1.35,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 14),

                // Price Breakdown
                CommonWhitCard(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                  child: Column(
                    children: [
                      priceRow("Course price", "৳3,499"),

                      priceDivider(),

                      priceRow("Batch discount", "− ৳1,000"),

                      priceDivider(),

                      priceRow("Premium member price", "− ৳500"),

                      priceDivider(),

                      priceRow(
                        "Total payable",
                        "৳1,999",
                        isTotal: true,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // Coupon Code
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color.fromRGBO(226, 230, 238, 1),
                      style: BorderStyle.none,
                    ),
                  ),
                  child: CustomPaint(
                    painter: DashedBorderPainter(
                      color: const Color.fromRGBO(226, 230, 238, 1),
                      radius: 16,
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: CommonLightText(
                            title: "Have a coupon code?",
                            fontSize: 12.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        InkWell(
                          onTap: () {},
                          child: const CommonBoldText(
                            title: "Apply",
                            fontSize: 12.5,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(150, 105, 10, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Payment Method Heading
                const Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 4),
                  child: CommonBoldText(
                    title: "Payment method",
                    fontSize: 16,
                    height: 1,
                    letterSpacing: -0.4,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                const SizedBox(height: 10),

                // Payment Methods
                CommonWhitCard(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                  child: Column(
                    children: [
                      paymentOption(
                        title: "bKash",
                        subtitle: "Mobile wallet · instant",
                        value: "bKash",
                      ),

                      paymentDivider(),

                      paymentOption(
                        title: "Nagad",
                        subtitle: "Mobile wallet · instant",
                        value: "Nagad",
                      ),

                      paymentDivider(),

                      paymentOption(
                        title: "Card",
                        subtitle: "Visa / Mastercard",
                        value: "Card",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Pay Button
                Row(
                  children: [
                    CommonActionButton(
                      title: "Pay ৳1,999",
                      buttonWidth: null,
                      margin: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Enrolled(),),);
                      },
                    ),

                    const SizedBox(width: 12),

                    const Expanded(
                      child: CommonLightText(
                        title: "Secure payment · receipt in your email",
                        fontSize: 11.5,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Price Row
  Widget priceRow(
      String title,
      String amount, {
        bool isTotal = false,
      }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: isTotal ? 15 : 14,
      ),
      child: Row(
        children: [
          Expanded(
            child: CommonLightText(
              title: title,
              fontSize: isTotal ? 14 : 13,
              height: 1,
              fontWeight: isTotal ? FontWeight.w800 : FontWeight.w400,
              letterSpacing: isTotal ? -0.28 : 0,
              color: isTotal
                  ? const Color.fromRGBO(17, 24, 39, 1)
                  : const Color.fromRGBO(71, 85, 105, 1),
            ),
          ),

          CommonBoldText(
            title: amount,
            fontSize: isTotal ? 18 : 13,
            height: 1,
            letterSpacing: isTotal ? -0.54 : 0,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
          ),
        ],
      ),
    );
  }

  // Price Divider
  Widget priceDivider() {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Color.fromRGBO(238, 240, 245, 1),
    );
  }

  // Payment Option
  Widget paymentOption({
    required String title,
    required String subtitle,
    required String value,
  }) {
    final bool isSelected = selectedPayment == value;

    return InkWell(
      onTap: () {
        setState(() {
          selectedPayment = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? const Color.fromRGBO(232, 165, 0, 1)
                      : const Color.fromRGBO(203, 213, 225, 1),
                  width: isSelected ? 6 : 1.5,
                ),
              ),
            ),

            const SizedBox(width: 13),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonBoldText(
                    title: title,
                    fontSize: 13.5,
                    height: 1.2,
                    letterSpacing: -0.2025,
                    fontWeight: FontWeight.w700,
                  ),

                  const SizedBox(height: 4),

                  CommonLightText(
                    title: subtitle,
                    fontSize: 11.5,
                    height: 1.3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Payment Divider
  Widget paymentDivider() {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Color.fromRGBO(238, 240, 245, 1),
    );
  }
}

// Dashed Border Painter
class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double radius;

  DashedBorderPainter({
    required this.color,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          Radius.circular(radius),
        ),
      );

    const dashWidth = 4.0;
    const dashSpace = 3.0;

    for (final metric in path.computeMetrics()) {
      double distance = 0;

      while (distance < metric.length) {
        final length = (distance + dashWidth).clamp(0.0, metric.length);

        canvas.drawPath(
          metric.extractPath(distance, length),
          paint,
        );

        distance += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant DashedBorderPainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.radius != radius;
  }
}
