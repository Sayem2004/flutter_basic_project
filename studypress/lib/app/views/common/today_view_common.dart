import "package:flutter/material.dart";

class CommonHeader extends StatelessWidget {
  final VoidCallback? onSearchTap;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onProfileTap;

  const CommonHeader({super.key, this.onSearchTap,
  this.onNotificationTap,this.onProfileTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 2,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(254, 254, 254, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/logo.png",
              height: 36,
              fit: BoxFit.contain,
            ),
          ),

          Row(
            children: [
              InkWell(
                onTap: onSearchTap,
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromRGBO(238, 240, 245, 1),
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(11, 32, 51, 0.04),
                        offset: Offset(0, 1),
                        blurRadius: 2,
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(11, 32, 51, 0.18),
                        offset: Offset(0, 12),
                        blurRadius: 28,
                        spreadRadius: -20,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.search,
                    size: 20,
                    color: Color.fromRGBO(11, 32, 51, 1),
                  ),
                ),
              ),
              const SizedBox(width: 9),

              // Notification
              InkWell(
                onTap: onNotificationTap,
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromRGBO(238, 240, 245, 1),
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(11, 32, 51, 0.04),
                        offset: Offset(0, 1),
                        blurRadius: 2,
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(11, 32, 51, 0.18),
                        offset: Offset(0, 12),
                        blurRadius: 28,
                        spreadRadius: -20,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      const Center(
                        child: Icon(
                          Icons.notifications_none,
                          size: 20,
                          color: Color.fromRGBO(11, 32, 51, 1),
                        ),
                      ),

                      Positioned(
                        top: 8,
                        right: 9,
                        child: Container(
                          height: 9,
                          width: 9,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(232, 165, 0, 1),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              const SizedBox(width: 9),

              InkWell(onTap: onProfileTap,
              borderRadius: BorderRadius.circular(50),
              child:Container(
                height: 44,
                width: 44,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(238, 240, 245, 1),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromRGBO(228, 232, 240, 1),
                    width: 1,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/profile.png",
                    width: 42,
                    height: 42,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ),




            ],
          ),
        ],
      ),
    );
  }
}




