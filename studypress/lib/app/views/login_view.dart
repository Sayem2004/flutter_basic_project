import "package:flutter/material.dart";
import "registration_view.dart";
import "today_view.dart";
import "common.dart";

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isPasswordVisible = false;

  final formKey = GlobalKey<FormState>();
  final mobileEmailController = TextEditingController();
  final passwordController = TextEditingController();

  String? registeredName;
  String? registeredMobile;
  String? registeredEmail;
  String? registeredPassword;

  @override
  void dispose() {
    mobileEmailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    if (registeredEmail == null || registeredPassword == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please create an account first."),
        ),
      );
      return;
    }

    String enteredLogin = mobileEmailController.text.trim();
    String enteredPassword = passwordController.text;

    bool loginMatches =
        (enteredLogin == registeredEmail ||
            enteredLogin == registeredMobile) &&
            enteredPassword == registeredPassword;

    if (loginMatches) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const TodayView(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Incorrect email/mobile or password."),
        ),
      );
    }
  }

  Future<void> openRegistration() async {
    final result = await Navigator.push<Map<String, String>>(
      context,
      MaterialPageRoute(
        builder: (context) => const RegistrationView(),
      ),
    );

    if (result != null) {
      setState(() {
        registeredName = result["name"];
        registeredMobile = result["mobile"];
        registeredEmail = result["email"];
        registeredPassword = result["password"];
      });

      mobileEmailController.text = registeredEmail ?? registeredMobile ?? "";
      passwordController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(26, 40, 26, 30),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 10,
                    ),
                    child: Image.asset("assets/images/logo.png", width: 104),
                  ),
                  const SizedBox(height: 34),
                  const Text(
                    "Welcome back",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      letterSpacing: -0.54,
                      color: Color.fromRGBO(17, 24, 39, 1),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Your BCS 46th preparation is waiting.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: Color.fromRGBO(107, 122, 136, 1),
                    ),
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    "Mobile or email",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Color.fromRGBO(71, 85, 105, 1),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: mobileEmailController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your mobile or email.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "01712 345 678",
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(226, 230, 238, 1),
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(226, 230, 238, 1),
                          width: 1,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1,
                      color: Color.fromRGBO(17, 24, 39, 1),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Color.fromRGBO(71, 85, 105, 1),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: passwordController,
                    obscureText: !isPasswordVisible,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password.";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "........",
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      contentPadding: const EdgeInsets.all(15),
                      suffixIcon: TextButton(
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        child: Text(
                          isPasswordVisible ? "Hide" : "Show",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            height: 1,
                            color: Color.fromRGBO(150, 105, 10, 1),
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(226, 230, 238, 1),
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(226, 230, 238, 1),
                          width: 1,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1,
                      letterSpacing: 2.7,
                      color: Color.fromRGBO(17, 24, 39, 1),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        height: 1,
                        color: Color.fromRGBO(150, 105, 10, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 26),
                  // button
                  CommonButton(
                    title: "Log in",
                    onPressed: login,
                  ),



                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: const Color.fromRGBO(232, 234, 240, 1),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "OR",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          height: 1,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: const Color.fromRGBO(232, 234, 240, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,

                        // button
                        child:CommonButton(
                          title: "Continue with Google",
                          onPressed: () {},
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                          borderColor: const Color.fromRGBO(226, 230, 238, 1),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: CommonButton(
                          title: "Continue with OTP",
                          onPressed: () {},
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                          borderColor: const Color.fromRGBO(226, 230, 238, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 10),
          child: SizedBox(
            height: 30,
            child: Center(
              child: GestureDetector(
                onTap: openRegistration,
                child: RichText(
                  text: const TextSpan(
                    text: "New here? ",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1,
                      color: Color.fromRGBO(100, 116, 139, 1),
                    ),
                    children: [
                      TextSpan(
                        text: "Create account",
                        style: TextStyle(
                          color: Color.fromRGBO(17, 24, 39, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
