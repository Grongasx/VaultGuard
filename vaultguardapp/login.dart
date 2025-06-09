import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fundo
          Positioned.fill(
            child: Image.asset(
              'assets/images/Background.png', // Certifique-se que este asset existe
              fit: BoxFit.cover,
            ),
          ),

          // Conteúdo da tela
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo
                  Image.asset(
                    'assets/images/LogoLetraBranca2.png', // Certifique-se que este asset existe
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(height: 32),

                  // Campo de e-mail
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white10,
                      labelText: 'E-mail',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelStyle: const TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),

                  // Campo de senha
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white10,
                      labelText: 'Senha',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelStyle: const TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 24),

                  // Botão entrar
                  SizedBox(
                    width: 50, // Mantido como no seu código original
                    child: ElevatedButton(
                      onPressed: () {
                        print('Botão Entrar pressionado');
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: const Color(0xFFF7A438),
                          shape: RoundedRectangleBorder( // Para combinar com o borderRadius dos TextFields
                            borderRadius: BorderRadius.circular(12),
                          )
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white, // Adicionando cor ao ícone para melhor visibilidade
                      ),
                    ),
                  ),
                  const SizedBox(height: 24), // Espaçamento antes do link de cadastro

                  // Opção de Cadastro
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Não tem uma conta? ',
                        style: TextStyle(color: Colors.white70),
                      ),
                      TextButton(
                        onPressed: () {
                          print('TextButton: Navegar para a tela de Cadastro');
                        },
                        style: TextButton.styleFrom(
                          foregroundBuilder: (BuildContext context, Set<WidgetState> states, Widget? child) {
                            return DecoratedBox(
                              decoration: BoxDecoration(
                                border:
                                  states.contains(WidgetState.hovered)
                                    ? Border(bottom: BorderSide(color: Colors.yellow))
                                    : const Border(),
                                  ),
                                  child: child,
                            );
                        },
                          overlayColor: Colors.transparent,
                        ),
                        child: const Text('Cadastre-se', style: TextStyle(color: Colors.yellow)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      print('Esqueci minha senha');
                    },
                    style: TextButton.styleFrom(
                      foregroundBuilder: (BuildContext context, Set<WidgetState> states, Widget? child) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                        border:
                          states.contains(WidgetState.hovered)
                          ? Border(bottom: BorderSide(color: Colors.yellow))
                          : const Border(),
                        ),
                      child: child);
                      },
                      foregroundColor: Colors.white70,
                      overlayColor: Colors.transparent,
                      ),

                      child: Text('Esqueci minha senha', style: TextStyle(color: Colors.yellow),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}