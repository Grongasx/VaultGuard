import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget socialIcon(String assetName) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(assetName, fit: BoxFit.contain),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Responsividade aprimorada
    double containerWidth;
    double containerMaxWidth;
    if (screenWidth >= 1200) {
      // Desktop
      containerWidth = screenWidth * 0.5;
      containerMaxWidth = 900;
    } else if (screenWidth >= 800) {
      // Tablet landscape
      containerWidth = screenWidth * 0.75;
      containerMaxWidth = 800;
    } else if (screenWidth >= 600) {
      // Tablet portrait
      containerWidth = screenWidth * 0.85;
      containerMaxWidth = 700;
    } else {
      // Celular
      containerWidth = screenWidth * 0.96;
      containerMaxWidth = 500;
    }

    double containerMinWidth = 320;
    double actualContainerWidth = containerWidth.clamp(containerMinWidth, containerMaxWidth);

    double containerMinHeight = 320;
    double containerMaxHeight = screenHeight * 0.93;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final aspectRatio = constraints.maxWidth / constraints.maxHeight;
          final bool isTabletLayout = aspectRatio > 0.7;

          return Stack(
            children: [
              // Background image
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/Background.png'),
                    fit: isTabletLayout ? BoxFit.fitHeight : BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    const Text(
                      'Gerenciar Contas',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: Center(
                        child: SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: containerMinHeight,
                              maxHeight: containerMaxHeight,
                              minWidth: containerMinWidth,
                              maxWidth: containerMaxWidth,
                            ),
                            child: Container(
                              width: actualContainerWidth,
                              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFF232323),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Grupos de contas
                                  Row(
                                    children: [
                                      // Criar Grupo
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            print('Criar Grupo clicado');
                                          },
                                          borderRadius: BorderRadius.circular(12),
                                          child: Container(
                                            margin: const EdgeInsets.only(right: 6),
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF363636),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 32,
                                                  height: 32,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white24,
                                                    borderRadius: BorderRadius.circular(8),
                                                  ),
                                                  child: const Icon(Icons.add, size: 28, color: Colors.white),
                                                ),
                                                const SizedBox(height: 4),
                                                const Text(
                                                  'Criar Grupo',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Grupo 1
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            print('Grupo Grongas clicado');
                                          },
                                          borderRadius: BorderRadius.circular(12),
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(horizontal: 3),
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF363636),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    socialIcon('assets/images/google.png'),
                                                    const SizedBox(width: 4),
                                                    socialIcon('assets/images/linkedin.png'),
                                                    const SizedBox(width: 4),
                                                    socialIcon('assets/images/github.png'),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                const Text(
                                                  'Contas Grongas',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Grupo 2
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            print('Grupo 2 clicado');
                                          },
                                          borderRadius: BorderRadius.circular(12),
                                          child: Container(
                                            margin: const EdgeInsets.only(left: 6),
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF363636),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    socialIcon('assets/images/google.png'),
                                                    const SizedBox(width: 4),
                                                    socialIcon('assets/images/linkedin.png'),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                const Text(
                                                  'Grupo 2',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),

                                  // Adicionar Conta
                                  InkWell(
                                    onTap: () {
                                      print('Adicionar Conta clicado');
                                    },
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF363636),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: const Icon(Icons.add, size: 28, color: Colors.white),
                                          ),
                                          const SizedBox(width: 12),
                                          const Text(
                                            'Adicionar Conta',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),

                                  // Lista de contas
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                    child: const Text(
                                      'Contas',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  // Conta Linkedin
                                  InkWell(
                                    onTap: () {
                                      print('Conta Linkedin clicada');
                                    },
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(vertical: 4),
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF363636),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        children: [
                                          socialIcon('assets/images/linkedin.png'),
                                          const SizedBox(width: 12),
                                          const Text(
                                            'Linkedin',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Conta Google
                                  InkWell(
                                    onTap: () {
                                      print('Conta Google clicada');
                                    },
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(vertical: 4),
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF363636),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        children: [
                                          socialIcon('assets/images/google.png'),
                                          const SizedBox(width: 12),
                                          const Text(
                                            'Google',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Conta GitHub
                                  InkWell(
                                    onTap: () {
                                      print('Conta GitHub clicada');
                                    },
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(vertical: 4),
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF363636),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        children: [
                                          socialIcon('assets/images/github.png'),
                                          const SizedBox(width: 12),
                                          const Text(
                                            'GitHub',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Rodapé fixo (estilo AppBar)
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 68,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF7A438),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          print('Home clicado');
                        },
                        icon: Image.asset('assets/images/home_icon.png', height: 36),
                      ),
                      IconButton(
                        onPressed: () {
                          print('Chave clicada');
                        },
                        icon: Image.asset('assets/images/key_icon.png', height: 36),
                      ),
                      IconButton(
                        onPressed: () {
                          print('Configurações clicadas');
                        },
                        icon: Image.asset('assets/images/settings_icon.png', height: 36),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}