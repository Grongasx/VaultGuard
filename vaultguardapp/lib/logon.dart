import 'package:flutter/material.dart';
import 'login.dart';

class logonPage extends StatelessWidget {
  const logonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: PreferredSize(preferredSize: const Size.fromHeight(70),
          child: AppBar(
            title: Image.asset('assets/images/LogoLetraBranca2.png', height: 50,fit: BoxFit.cover),
            backgroundColor: Color(0xc3000000),
            elevation: 0,
            centerTitle: true,
          )
        ),
      body: Stack(
        children: [
          // Fundo
          Positioned.fill(
            child: Image.asset(
              'assets/images/Background.png',
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
                  // Campo de nome
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white10,
                      labelText: 'Nome',
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
                  const SizedBox(height: 16),

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
                  const SizedBox(height: 16),

                  // Campo de confirmação de senha
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white10,
                      labelText: 'Confirme a senha',
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

                  // Botão cadastrar
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Botão Cadastrar pressionado');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: const Color(0xFFF7A438),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Cadastrar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Voltar para login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Já possui conta? ',
                        style: TextStyle(color: Colors.white70),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => const loginPage()),
                          );
                        },
                        child: const Text('Entrar', style: TextStyle(color: Colors.yellow)),
                      ),
                    ],
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