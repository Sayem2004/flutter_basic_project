import "package:flutter/material.dart";
import "common.dart";
class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void register() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text("Registration successful"),
          content: const Text("Your account has been created. Please log in."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
                Navigator.pop(context, {
                  "name": nameController.text.trim(),
                  "mobile": mobileController.text.trim(),
                  "email": emailController.text.trim(),
                  "password": passwordController.text,
                });
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
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
                    "Create Account",
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
                    "Start your BCS 46th preparation journey.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: Color.fromRGBO(107, 122, 136, 1),
                    ),
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    "Full name",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Color.fromRGBO(71, 85, 105, 1),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your name.";
                      }
                      return null;
                    },
                    decoration: _inputDecoration("Your name"),
                    style: _fieldStyle(),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Mobile",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Color.fromRGBO(71, 85, 105, 1),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: mobileController,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your mobile number.";
                      }
                      if (value.trim().length < 7) {
                        return "Please enter a valid mobile number.";
                      }
                      return null;
                    },
                    decoration: _inputDecoration("01712 345 678"),
                    style: _fieldStyle(),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Color.fromRGBO(71, 85, 105, 1),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your email.";
                      }
                      if (!value.contains("@") || !value.contains(".")) {
                        return "Please enter a valid email.";
                      }
                      return null;
                    },
                    decoration: _inputDecoration("you@example.com"),
                    style: _fieldStyle(),
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
                        return "Please enter a password.";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters.";
                      }
                      return null;
                    },
                    decoration: _inputDecoration("........").copyWith(
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
                            color: Color.fromRGBO(150, 105, 10, 1),
                          ),
                        ),
                      ),
                    ),
                    style: _fieldStyle().copyWith(letterSpacing: 2.7),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Re-type password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Color.fromRGBO(71, 85, 105, 1),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: confirmPasswordController,
                    obscureText: !isConfirmPasswordVisible,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please re-type your password.";
                      }
                      if (value != passwordController.text) {
                        return "Passwords do not match.";
                      }
                      return null;
                    },
                    decoration: _inputDecoration("........").copyWith(
                      suffixIcon: TextButton(
                        onPressed: () {
                          setState(() {
                            isConfirmPasswordVisible =
                            !isConfirmPasswordVisible;
                          });
                        },
                        child: Text(
                          isConfirmPasswordVisible ? "Hide" : "Show",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(150, 105, 10, 1),
                          ),
                        ),
                      ),
                    ),
                    style: _fieldStyle().copyWith(letterSpacing: 2.7),
                  ),
                  const SizedBox(height: 26),
                  SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      title: "Create account",
                      onPressed: register,
                    ),
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
                onTap: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: const TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1,
                      color: Color.fromRGBO(100, 116, 139, 1),
                    ),
                    children: [
                      TextSpan(
                        text: "Log in",
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

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
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
    );
  }

  TextStyle _fieldStyle() {
    return const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      height: 1,
      color: Color.fromRGBO(17, 24, 39, 1),
    );
  }
}
