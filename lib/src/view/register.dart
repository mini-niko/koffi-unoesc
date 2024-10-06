import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/ui/components/custom_button.dart';
import 'package:koffi_unoesc/src/ui/theme/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32)
            .add(const EdgeInsets.only(top: 50)),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: AlignmentDirectional.topCenter,
            children: [
              Card(
                color: theme.cardColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 75,
                    left: 32,
                    right: 32,
                    bottom: 48,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Registrar",
                        style: theme.primaryTextTheme.titleMedium,
                      ),
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Nome",
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Senha",
                        ),
                      ),
                      const SizedBox(height: 32),
                      CustomButton(
                        title: "Enviar",
                        color: colors["black"],
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/products");
                        },
                      ),
                      const SizedBox(height: 32),
                      RichText(
                        text: TextSpan(
                          style: theme.primaryTextTheme.bodyMedium,
                          text: "Já tem uma conta? ",
                          children: [
                            TextSpan(
                              style: theme.primaryTextTheme.bodyLarge?.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                              text: "Entrar",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, "/login");
                                },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -75,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 150,
                ),
              )
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/");
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
