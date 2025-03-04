import 'package:flutter/material.dart';
import 'package:game_unlockerapp/login/widgets/formfield_widget.dart';
import 'package:game_unlockerapp/utils/constants.dart';

class WidgetLoginForm extends StatefulWidget {
  const WidgetLoginForm({super.key});

  @override
  State<WidgetLoginForm> createState() => _WidgetLoginFormState();
}

class _WidgetLoginFormState extends State<WidgetLoginForm> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        WigetFormField(
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Endereço de email',
              labelStyle: TextStyle(
                height: 0.2,
                color: Colors.grey.withOpacity(0.8),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(height: 16.0),
        WigetFormField(
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Senha',
              labelStyle: TextStyle(
                height: 0.2,
                color: Colors.grey.withOpacity(0.8),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                  color: Colors.grey.withOpacity(0.8),
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
            ),
            obscureText: !isPasswordVisible,
          ),
        ),
        TextButton(
          child: Text(
            "Esqueceu a senha?",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => null,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: size.height * 0.025),
          child: SizedBox(
            width: size.width * 0.5,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Constants.primaryMedium,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => null,
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: size.width * 0.3,
              height: size.height * 0.003,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
            const Text(
              "Ou entre com",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: size.width * 0.3,
              height: size.height * 0.003,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 1,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/google_icon.png',
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Google',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 1,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/steam_icon.png',
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Steam',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
