import 'package:admin_dashboard_web/constants/style.dart';
import 'package:admin_dashboard_web/routing/routes.dart';
import 'package:admin_dashboard_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(width: 30),
                  Image.asset(
                    "icons/logo_large.png",
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "Login",
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const CustomText(
                "Welcome back to the admin panel",
                color: lightGrey,
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "abc@domain.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "12345678",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const CustomText("Remember Me"),
                    ],
                  ),
                  const CustomText(
                    "Forgot Password",
                    color: active,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.offAllNamed(rootRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const CustomText(
                    "Login",
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: "Do not have admin credentials? "),
                    TextSpan(
                      text: "Request credentials!",
                      style: TextStyle(color: active),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
